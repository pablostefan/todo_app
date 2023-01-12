import 'package:module_core/helpers/todo_exception.dart';
import 'package:module_external_dependencies/dartz.dart';

Future<Either<TodoException, T>> executeWithCatch<T>(Future Function() func) async {
  try {
    return Right(await func.call());
  } catch (e) {
    return Left(TodoException(message: "Error"));
  }
}
