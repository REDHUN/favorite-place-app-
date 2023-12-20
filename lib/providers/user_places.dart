import 'package:favoriteplace/models/place.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Places>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Places(name: title);
    state = [newPlace, ...state];
  }
}

final userplacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Places>>(
        (ref) => UserPlacesNotifier());
