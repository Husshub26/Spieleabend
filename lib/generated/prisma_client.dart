// /// Generated Prisma Client for Dart/Flutter
// ///
// /// This client provides type-safe database access using adapters.
// /// No GraphQL backend required — connects directly to your database!

import 'package:prisma_flutter_connector/runtime.dart';
import 'delegates/user_delegate.dart';
import 'delegates/group_delegate.dart';
import 'delegates/group_membership_delegate.dart';
import 'delegates/game_session_delegate.dart';
import 'delegates/game_proposal_delegate.dart';
import 'delegates/game_vote_delegate.dart';
import 'delegates/evening_rating_delegate.dart';
import 'delegates/quick_message_delegate.dart';
import 'delegates/cuisine_preference_delegate.dart';
import 'delegates/delivery_service_delegate.dart';
import 'delegates/menu_item_delegate.dart';
import 'delegates/food_order_delegate.dart';
import 'models/user.dart';
import 'models/group.dart';
import 'models/group_membership.dart';
import 'models/game_session.dart';
import 'models/game_proposal.dart';
import 'models/game_vote.dart';
import 'models/evening_rating.dart';
import 'models/quick_message.dart';
import 'models/cuisine_preference.dart';
import 'models/delivery_service.dart';
import 'models/menu_item.dart';
import 'models/food_order.dart';

/// Main Prisma client for database operations
///
/// Provides access to all models through type-safe delegate classes.
class PrismaClient {
  /// Create a new PrismaClient with a database adapter
  PrismaClient({required this.adapter})
    : _executor = QueryExecutor(adapter: adapter) {
    user = UserDelegate(_executor);
    group = GroupDelegate(_executor);
    groupMembership = GroupMembershipDelegate(_executor);
    gameSession = GameSessionDelegate(_executor);
    gameProposal = GameProposalDelegate(_executor);
    gameVote = GameVoteDelegate(_executor);
    eveningRating = EveningRatingDelegate(_executor);
    quickMessage = QuickMessageDelegate(_executor);
    cuisinePreference = CuisinePreferenceDelegate(_executor);
    deliveryService = DeliveryServiceDelegate(_executor);
    menuItem = MenuItemDelegate(_executor);
    foodOrder = FoodOrderDelegate(_executor);
  }

  PrismaClient._transaction(BaseExecutor executor)
    : adapter = executor.adapter,
      _executor = executor {
    user = UserDelegate(_executor);
    group = GroupDelegate(_executor);
    groupMembership = GroupMembershipDelegate(_executor);
    gameSession = GameSessionDelegate(_executor);
    gameProposal = GameProposalDelegate(_executor);
    gameVote = GameVoteDelegate(_executor);
    eveningRating = EveningRatingDelegate(_executor);
    quickMessage = QuickMessageDelegate(_executor);
    cuisinePreference = CuisinePreferenceDelegate(_executor);
    deliveryService = DeliveryServiceDelegate(_executor);
    menuItem = MenuItemDelegate(_executor);
    foodOrder = FoodOrderDelegate(_executor);
  }

  /// The database adapter (PostgreSQL, Supabase, SQLite, etc.)
  final SqlDriverAdapter adapter;

  /// The query executor
  final BaseExecutor _executor;

  /// Delegate for User operations
  late final UserDelegate user;

  /// Delegate for Group operations
  late final GroupDelegate group;

  /// Delegate for GroupMembership operations
  late final GroupMembershipDelegate groupMembership;

  /// Delegate for GameSession operations
  late final GameSessionDelegate gameSession;

  /// Delegate for GameProposal operations
  late final GameProposalDelegate gameProposal;

  /// Delegate for GameVote operations
  late final GameVoteDelegate gameVote;

  /// Delegate for EveningRating operations
  late final EveningRatingDelegate eveningRating;

  /// Delegate for QuickMessage operations
  late final QuickMessageDelegate quickMessage;

  /// Delegate for CuisinePreference operations
  late final CuisinePreferenceDelegate cuisinePreference;

  /// Delegate for DeliveryService operations
  late final DeliveryServiceDelegate deliveryService;

  /// Delegate for MenuItem operations
  late final MenuItemDelegate menuItem;

  /// Delegate for FoodOrder operations
  late final FoodOrderDelegate foodOrder;

  /// Execute multiple operations in a transaction
  ///
  /// All operations succeed or all rollback on error.
  Future<T> $transaction<T>(
    Future<T> Function(PrismaClient) callback, {
    IsolationLevel? isolationLevel,
  }) async {
    final queryExecutor = _executor as QueryExecutor;
    return await queryExecutor.executeInTransaction((txExecutor) async {
      final txClient = PrismaClient._transaction(txExecutor);
      return await callback(txClient);
    }, isolationLevel: isolationLevel);
  }

  /// Close the database connection
  Future<void> $disconnect() async {
    final queryExecutor = _executor as QueryExecutor;
    await queryExecutor.dispose();
  }
}

/// Helper class for filter operators
///
/// Use these when building WHERE clauses.
class Where {
  /// Equals
  static Map<String, dynamic> equals(dynamic value) {
    return FilterOperators.equals(value);
  }

  /// Not equals
  static Map<String, dynamic> not(dynamic value) {
    return FilterOperators.not(value);
  }

  /// In list
  static Map<String, dynamic> in_(List<dynamic> value) {
    return FilterOperators.in_(value);
  }

  /// Not in list
  static Map<String, dynamic> notIn(List<dynamic> value) {
    return FilterOperators.notIn(value);
  }

  /// Less than
  static Map<String, dynamic> lt(dynamic value) {
    return FilterOperators.lt(value);
  }

  /// Less than or equal
  static Map<String, dynamic> lte(dynamic value) {
    return FilterOperators.lte(value);
  }

  /// Greater than
  static Map<String, dynamic> gt(dynamic value) {
    return FilterOperators.gt(value);
  }

  /// Greater than or equal
  static Map<String, dynamic> gte(dynamic value) {
    return FilterOperators.gte(value);
  }

  /// Contains (string)
  static Map<String, dynamic> contains(String value) {
    return FilterOperators.contains(value);
  }

  /// Starts with
  static Map<String, dynamic> startsWith(String value) {
    return FilterOperators.startsWith(value);
  }

  /// Ends with
  static Map<String, dynamic> endsWith(String value) {
    return FilterOperators.endsWith(value);
  }

  /// AND conditions
  static Map<String, dynamic> and(List<Map<String, dynamic>> conditions) {
    return FilterOperators.and(conditions);
  }

  /// OR conditions
  static Map<String, dynamic> or(List<Map<String, dynamic>> conditions) {
    return FilterOperators.or(conditions);
  }

  /// NOT condition
  static Map<String, dynamic> none(Map<String, dynamic> condition) {
    return FilterOperators.none(condition);
  }
}
