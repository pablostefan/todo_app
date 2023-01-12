import 'package:module_core/database/models/todo_model.dart';
import 'package:module_core/helpers/todo_exception.dart';
import 'package:module_external_dependencies/dartz.dart';

abstract class ITodoRepository {
  Future<Either<TodoException, void>> initDataBase();

  Future<Either<TodoException, void>> saveAndUpdate(TodoModel todoModel);

  Future<Either<TodoException, void>> remove(TodoModel todoModel);

  Future<Either<TodoException, List<TodoModel>>> getAll();
}
