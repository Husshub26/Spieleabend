"""Generate a simple app icon featuring a playing card and a chess knight,
and write it to all platform-specific locations (Android mipmaps, iOS
AppIcon, web favicon and PWA icons).

Run from repository root:
    python3 tool/generate_icon.py
"""
from __future__ import annotations

import os
from pathlib import Path
from PIL import Image, ImageDraw, ImageFilter, ImageFont

ROOT = Path(__file__).resolve().parent.parent

# Palette
BG_TOP = (46, 86, 148)        # deep blue
BG_BOTTOM = (24, 46, 86)      # darker blue
CARD_FACE = (250, 248, 240)   # ivory
CARD_EDGE = (30, 30, 40)      # near-black outline
SUIT_RED = (200, 40, 56)      # heart red
PIECE_FILL = (236, 232, 220)  # ivory chess piece
PIECE_SHADE = (188, 182, 168) # piece shadow / depth
PIECE_EDGE = (30, 30, 40)     # piece outline


def _vertical_gradient(size: int, top, bottom) -> Image.Image:
    grad = Image.new("RGB", (1, size))
    for y in range(size):
        t = y / max(size - 1, 1)
        r = int(top[0] * (1 - t) + bottom[0] * t)
        g = int(top[1] * (1 - t) + bottom[1] * t)
        b = int(top[2] * (1 - t) + bottom[2] * t)
        grad.putpixel((0, y), (r, g, b))
    return grad.resize((size, size))


def _rounded_mask(size: int, radius_ratio: float) -> Image.Image:
    mask = Image.new("L", (size, size), 0)
    d = ImageDraw.Draw(mask)
    r = int(size * radius_ratio)
    d.rounded_rectangle((0, 0, size - 1, size - 1), radius=r, fill=255)
    return mask


def _load_font(size: int) -> ImageFont.ImageFont:
    for path in (
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",
        "/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf",
        "/usr/share/fonts/truetype/freefont/FreeSansBold.ttf",
    ):
        if os.path.exists(path):
            return ImageFont.truetype(path, size)
    return ImageFont.load_default()


def _heart(d: ImageDraw.ImageDraw, cx: float, cy: float, size: float, color) -> None:
    """Filled heart centered at (cx, cy), bounding box ~ size x size."""
    r = size / 2
    d.ellipse((cx - size / 2, cy - r, cx, cy), fill=color)
    d.ellipse((cx, cy - r, cx + size / 2, cy), fill=color)
    d.polygon(
        [
            (cx - size / 2, cy - r / 4),
            (cx + size / 2, cy - r / 4),
            (cx, cy + size * 0.7),
        ],
        fill=color,
    )


def _draw_card(canvas: Image.Image, cx: float, cy: float, w: float, h: float,
               angle_deg: float) -> None:
    """Draw a tilted Ace-of-Hearts playing card centered at (cx, cy)."""
    pad = int(max(w, h) * 0.4)
    cw = int(w + pad * 2)
    ch = int(h + pad * 2)
    layer = Image.new("RGBA", (cw, ch), (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)

    edge_w = max(2, int(w * 0.025))
    radius = int(min(w, h) * 0.12)
    rect = (pad, pad, pad + int(w), pad + int(h))
    d.rounded_rectangle(rect, radius=radius, fill=CARD_FACE,
                        outline=CARD_EDGE, width=edge_w)

    inset = int(w * 0.06)
    d.rounded_rectangle(
        (rect[0] + inset, rect[1] + inset, rect[2] - inset, rect[3] - inset),
        radius=max(2, radius - inset // 2),
        outline=(210, 200, 170),
        width=max(1, edge_w // 2),
    )

    _heart(d, pad + w / 2, pad + h / 2, size=w * 0.55, color=SUIT_RED)

    # "A" + small heart in top-left corner
    font = _load_font(int(h * 0.18))
    d.text((rect[0] + inset + int(w * 0.04), rect[1] + inset + int(h * 0.02)),
           "A", fill=SUIT_RED, font=font)
    _heart(d, rect[0] + inset + int(w * 0.10), rect[1] + inset + int(h * 0.20),
           size=w * 0.10, color=SUIT_RED)

    # Mirrored corner in bottom-right (rotated 180°)
    cw2 = int(w * 0.32)
    ch2 = int(h * 0.30)
    br = Image.new("RGBA", (cw2, ch2), (0, 0, 0, 0))
    bd = ImageDraw.Draw(br)
    bd.text((int(w * 0.04), 0), "A", fill=SUIT_RED, font=font)
    _heart(bd, int(w * 0.10), int(h * 0.20), size=w * 0.10, color=SUIT_RED)
    br = br.rotate(180, resample=Image.BICUBIC)
    layer.alpha_composite(
        br,
        (rect[2] - inset - br.size[0], rect[3] - inset - br.size[1]),
    )

    rotated = layer.rotate(angle_deg, resample=Image.BICUBIC, expand=True)

    # Soft drop shadow
    shadow = Image.new("RGBA", rotated.size, (0, 0, 0, 0))
    shadow.paste((0, 0, 0, 130), mask=rotated.split()[3])
    shadow = shadow.filter(ImageFilter.GaussianBlur(radius=max(2, int(w * 0.04))))

    canvas.alpha_composite(
        shadow,
        (int(cx - rotated.size[0] / 2 + w * 0.05),
         int(cy - rotated.size[1] / 2 + w * 0.06)),
    )
    canvas.alpha_composite(
        rotated,
        (int(cx - rotated.size[0] / 2), int(cy - rotated.size[1] / 2)),
    )


def _draw_knight(canvas: Image.Image, cx: float, cy: float, height: float) -> None:
    """Draw a stylized chess knight centered at (cx, cy)."""
    h = height
    w = h * 0.85
    pad = int(max(w, h) * 0.3)
    lw = int(w + pad * 2)
    lh = int(h + pad * 2)
    layer = Image.new("RGBA", (lw, lh), (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)

    ox, oy = pad, pad
    edge_w = max(2, int(h * 0.025))

    # Pedestal
    base_h = max(4.0, h * 0.13)
    base_top = oy + h - base_h
    base_w = w * 1.05
    base_x = ox + (w - base_w) / 2
    pedestal_rect = (
        round(base_x),
        round(base_top + base_h * 0.45),
        round(base_x + base_w),
        round(base_top + base_h),
    )
    d.rounded_rectangle(
        pedestal_rect,
        radius=max(1, int(base_h * 0.25)),
        fill=PIECE_FILL, outline=PIECE_EDGE, width=edge_w,
    )
    collar_w = w * 0.85
    collar_x = ox + (w - collar_w) / 2
    collar_rect = (
        round(collar_x),
        round(base_top),
        round(collar_x + collar_w),
        round(base_top + base_h * 0.55),
    )
    d.rounded_rectangle(
        collar_rect,
        radius=max(1, int(base_h * 0.2)),
        fill=PIECE_FILL, outline=PIECE_EDGE, width=edge_w,
    )

    # Knight head silhouette (facing left)
    head_h = h - base_h * 1.25
    head_pts_ratio = [
        (0.92, 1.00),
        (0.92, 0.62),
        (0.78, 0.30),
        (0.62, 0.10),
        (0.50, 0.02),
        (0.40, 0.10),
        (0.28, 0.06),
        (0.18, 0.18),
        (0.08, 0.34),
        (0.02, 0.52),
        (0.10, 0.66),
        (0.22, 0.70),
        (0.30, 0.78),
        (0.46, 0.86),
        (0.62, 0.95),
        (0.78, 1.00),
    ]
    head_pts = [(ox + rx * w, oy + ry * head_h) for rx, ry in head_pts_ratio]
    d.polygon(head_pts, fill=PIECE_FILL, outline=PIECE_EDGE)
    d.line(head_pts + [head_pts[0]], fill=PIECE_EDGE, width=edge_w, joint="curve")

    # Mane shading
    mane_pts_ratio = [
        (0.62, 0.12), (0.78, 0.32), (0.92, 0.62), (0.86, 0.62),
        (0.74, 0.34), (0.60, 0.18),
    ]
    mane_pts = [(ox + rx * w, oy + ry * head_h) for rx, ry in mane_pts_ratio]
    d.polygon(mane_pts, fill=PIECE_SHADE)

    # Eye
    eye_x = ox + 0.30 * w
    eye_y = oy + 0.34 * head_h
    eye_r = max(2, h * 0.018)
    d.ellipse((eye_x - eye_r, eye_y - eye_r, eye_x + eye_r, eye_y + eye_r),
              fill=PIECE_EDGE)

    # Nostril
    nx = ox + 0.10 * w
    ny = oy + 0.50 * head_h
    nr = max(1, h * 0.012)
    d.ellipse((nx - nr, ny - nr, nx + nr, ny + nr), fill=PIECE_EDGE)

    # Mouth
    d.line(
        [(ox + 0.05 * w, oy + 0.60 * head_h),
         (ox + 0.20 * w, oy + 0.66 * head_h)],
        fill=PIECE_EDGE, width=max(1, edge_w - 1),
    )

    # Drop shadow
    shadow = Image.new("RGBA", layer.size, (0, 0, 0, 0))
    shadow.paste((0, 0, 0, 140), mask=layer.split()[3])
    shadow = shadow.filter(ImageFilter.GaussianBlur(radius=max(2, int(h * 0.05))))

    canvas.alpha_composite(
        shadow,
        (int(cx - layer.size[0] / 2 + h * 0.04),
         int(cy - layer.size[1] / 2 + h * 0.06)),
    )
    canvas.alpha_composite(
        layer,
        (int(cx - layer.size[0] / 2), int(cy - layer.size[1] / 2)),
    )


def make_icon(size: int, *, rounded: bool = True,
              radius_ratio: float = 0.22) -> Image.Image:
    s = size * 4  # supersample for smooth edges
    base = _vertical_gradient(s, BG_TOP, BG_BOTTOM).convert("RGBA")

    # Soft top highlight
    highlight = Image.new("RGBA", (s, s), (0, 0, 0, 0))
    hd = ImageDraw.Draw(highlight)
    for i, alpha in enumerate(range(60, 0, -6)):
        r = int(s * (0.25 + i * 0.02))
        hd.ellipse((s / 2 - r, s * 0.2 - r, s / 2 + r, s * 0.2 + r),
                   fill=(255, 255, 255, alpha))
    highlight = highlight.filter(ImageFilter.GaussianBlur(radius=int(s * 0.08)))
    base.alpha_composite(highlight)

    # Card on the lower-left, tilted.
    card_w = s * 0.50
    card_h = card_w * 1.45
    _draw_card(base, cx=s * 0.38, cy=s * 0.62, w=card_w, h=card_h, angle_deg=14)

    # Knight on the upper-right.
    _draw_knight(base, cx=s * 0.66, cy=s * 0.46, height=s * 0.62)

    if rounded:
        mask = _rounded_mask(s, radius_ratio)
        out = Image.new("RGBA", (s, s), (0, 0, 0, 0))
        out.paste(base, (0, 0), mask)
    else:
        out = base

    return out.resize((size, size), Image.LANCZOS)


def make_maskable(size: int) -> Image.Image:
    return make_icon(size, rounded=False)


def save(img: Image.Image, path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    img.save(path, format="PNG", optimize=True)
    print(f"  wrote {path.relative_to(ROOT)} ({img.size[0]}x{img.size[1]})")


def main() -> None:
    print("Generating Android mipmap icons...")
    android_sizes = {
        "mipmap-mdpi": 48,
        "mipmap-hdpi": 72,
        "mipmap-xhdpi": 96,
        "mipmap-xxhdpi": 144,
        "mipmap-xxxhdpi": 192,
    }
    for folder, size in android_sizes.items():
        out = ROOT / "android/app/src/main/res" / folder / "ic_launcher.png"
        save(make_icon(size, rounded=True, radius_ratio=0.22), out)

    print("Generating iOS AppIcon set...")
    ios_dir = ROOT / "ios/Runner/Assets.xcassets/AppIcon.appiconset"
    ios_specs = {
        "Icon-App-20x20@1x.png": 20,
        "Icon-App-20x20@2x.png": 40,
        "Icon-App-20x20@3x.png": 60,
        "Icon-App-29x29@1x.png": 29,
        "Icon-App-29x29@2x.png": 58,
        "Icon-App-29x29@3x.png": 87,
        "Icon-App-40x40@1x.png": 40,
        "Icon-App-40x40@2x.png": 80,
        "Icon-App-40x40@3x.png": 120,
        "Icon-App-60x60@2x.png": 120,
        "Icon-App-60x60@3x.png": 180,
        "Icon-App-76x76@1x.png": 76,
        "Icon-App-76x76@2x.png": 152,
        "Icon-App-83.5x83.5@2x.png": 167,
        "Icon-App-1024x1024@1x.png": 1024,
    }
    for name, size in ios_specs.items():
        icon = make_icon(size, rounded=False)
        rgb = Image.new("RGB", icon.size, BG_TOP)
        rgb.paste(icon.convert("RGB"), (0, 0))
        save(rgb.convert("RGBA"), ios_dir / name)

    print("Generating web favicon and PWA icons...")
    save(make_icon(64, rounded=True, radius_ratio=0.18), ROOT / "web/favicon.png")
    save(make_icon(192, rounded=True, radius_ratio=0.18), ROOT / "web/icons/Icon-192.png")
    save(make_icon(512, rounded=True, radius_ratio=0.18), ROOT / "web/icons/Icon-512.png")
    save(make_maskable(192), ROOT / "web/icons/Icon-maskable-192.png")
    save(make_maskable(512), ROOT / "web/icons/Icon-maskable-512.png")

    print("Done.")


if __name__ == "__main__":
    main()
