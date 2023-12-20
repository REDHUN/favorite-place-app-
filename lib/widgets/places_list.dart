import 'package:favoriteplace/data/dummy_place.dart';
import 'package:favoriteplace/models/place.dart';
import 'package:favoriteplace/screens/place_details.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<Places> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Container(
        height: 500,
        child: const Center(
          child: Text(
            'No Places Added Yet',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
    return Expanded(
      child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (ctx, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) =>
                          PlaceDetailScreen(placeTilte: places[index].name)));
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          padding: const EdgeInsets.all(15),
                          height: 60,
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            places[index].name.toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              )),
    );
  }
}
