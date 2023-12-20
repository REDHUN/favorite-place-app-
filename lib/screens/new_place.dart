import 'package:favoriteplace/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlace extends ConsumerStatefulWidget {
  const NewPlace({super.key});

  @override
  ConsumerState<NewPlace> createState() => _NewPlaceState();
}

class _NewPlaceState extends ConsumerState<NewPlace> {
  final _placeName = TextEditingController();
  void _savePlace() {
    final enteredText = _placeName.text;
    if (enteredText.isEmpty) {
      return;
    }
    ref.read(userplacesProvider.notifier).addPlace(enteredText);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //  padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 140,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 103, 3, 235)),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  " Add Your Places",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Enter Your Place :',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 103, 3, 235)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: double.infinity,
            child: TextField(
              textAlign: TextAlign.center,
              controller: _placeName,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding: const EdgeInsets.all(0),
                  border: const OutlineInputBorder(),
                  hintStyle: TextStyle(color: Colors.grey[400])),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: TextButton(
                onPressed: _savePlace,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 103, 3, 235),
                )),
                child: const Text(
                  'Add Place',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
