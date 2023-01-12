import 'package:module_external_dependencies/intl.dart';
import 'package:module_external_dependencies/objectbox.dart';

@Entity()
class TodoModel {
  int id;

  String name;

  bool done;

  @Property(type: PropertyType.date)
  DateTime date;

  TodoModel({required this.id, required this.name, this.done = false, DateTime? date}) : date = date ?? DateTime.now();

  String get dateFormat => DateFormat('dd.MM.yyyy hh:mm:ss').format(date);
}
