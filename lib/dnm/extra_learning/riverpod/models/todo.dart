import 'package:uuid/uuid.dart';

var _uuid = const Uuid();

class Todo {
  final String id;
  final String description;
  Todo({required this.description, required String id}) : id = _uuid.v4();
}
