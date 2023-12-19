import 'package:favoriteplace/data/dummy_place.dart';
import 'package:favoriteplace/screens/new_place.dart';

import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  void _addPlace() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const NewPlace()));
  }

  @override
  Widget build(BuildContext context) {
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
                      onPressed: _addPlace,
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: placeList.length,
                itemBuilder: (ctx, index) => InkWell(
                      onTap: () {},
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
                                  placeList[index].name.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )),
          )
        ],
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
