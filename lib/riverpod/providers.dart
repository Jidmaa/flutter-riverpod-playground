

// user state for the app 
import 'package:clothes_shop/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = FutureProvider<String>((ref) async {
  return ref.read(databaseProvider).getUserData();
});