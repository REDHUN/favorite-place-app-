import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Places {
  Places({required this.name, required this.image}) : id = uuid.v4();

  String name;
  String id;
  final File image;
}
