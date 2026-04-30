import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) => _LoginForm(state: state),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  final AuthState state;
  const _LoginForm({required this.state});
  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit([String? value]) {
    final v = value ?? _controller.text;
    context.read<AuthBloc>().add(AuthLoginRequested(v));
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        Icon(Icons.casino_rounded, size: 72, color: theme.colorScheme.primary),
        const SizedBox(height: 16),
        Text(
          'Spieleabend',
          style: theme.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Melde dich mit deinem Benutzernamen an.',
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        TextField(
          controller: _controller,
          autofocus: true,
          textInputAction: TextInputAction.go,
          decoration: const InputDecoration(
            labelText: 'Benutzername',
            prefixIcon: Icon(Icons.person_outline),
          ),
          onSubmitted: _submit,
        ),
        const SizedBox(height: 12),
        FilledButton.icon(
          icon: const Icon(Icons.login),
          label: const Text('Einloggen'),
          onPressed: () => _submit(),
        ),
        if (state.status == AuthStatus.error && state.errorMessage != null) ...[
          const SizedBox(height: 12),
          Text(
            state.errorMessage!,
            style: TextStyle(color: theme.colorScheme.error),
            textAlign: TextAlign.center,
          ),
        ],
        if (state.recentUsernames.isNotEmpty) ...[
          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Zuletzt aktiv', style: theme.textTheme.titleSmall),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final u in state.recentUsernames)
                ActionChip(
                  avatar: const Icon(Icons.account_circle_outlined),
                  label: Text(u),
                  onPressed: () => _submit(u),
                ),
            ],
          ),
        ],
      ],
    );
  }
}
