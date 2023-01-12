import 'package:module_core/database/models/todo_model.dart';
import 'package:module_core/database/object_box/objectbox.g.dart';
import 'package:module_core/helpers/todo_exception.dart';
import 'package:module_core/helpers/todo_execute_with_cath.dart';
import 'package:module_core/repositories/todo/interface/todo_interface.dart';
import 'package:module_external_dependencies/dartz.dart';

class TodoRepository implements ITodoRepository {
  Store? _store;
  Box<TodoModel>? _box;

  @override
  Future<Either<TodoException, void>> initDataBase() async {
    return executeWithCatch(() async {
      _store ??= openStore();
      _box ??= _store?.box<TodoModel>();
    });
  }

  @override
  Future<Either<TodoException, void>> saveAndUpdate(TodoModel todoModel) async {
    return executeWithCatch(() async => _box?.put(todoModel));
  }

  @override
  Future<Either<TodoException, void>> remove(TodoModel todoModel) async {
    return executeWithCatch(() async => _box?.remove(todoModel.id));
  }

  @override
  Future<Either<TodoException, List<TodoModel>>> getAll() async => executeWithCatch(() async => _box?.getAll());
}
