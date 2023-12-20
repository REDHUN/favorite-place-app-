import 'package:favoriteplace/providers/user_places.dart';
import 'package:favoriteplace/widgets/places_list.dart';
import 'package:favoriteplace/screens/new_place.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userplacesProvider);
    return Scaffold(
      body: Column(
        children: [
          Container(
            //  padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 140,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 103, 3, 235)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Your Places",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const NewPlace()));
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          PlacesList(places: userPlaces),
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
