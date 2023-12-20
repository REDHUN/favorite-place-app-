import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Places {
  Places({required this.name}) : id = uuid.v4();

  String name;
  String id;
}
