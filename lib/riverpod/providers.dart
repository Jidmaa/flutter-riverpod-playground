// user state for the app
import 'package:clothes_shop/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for providing data

final userProvider = FutureProvider<String>((ref) async {
  return ref.read(databaseProvider).getUserData();
});

// Controller to provide AND controll the data
final counterController =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void add() {
    state = state + 1;
  }

  void substract() {
    state = state - 1;
  }
}
