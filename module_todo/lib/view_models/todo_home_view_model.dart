import 'package:flutter/material.dart';
import 'package:module_core/database/models/todo_model.dart';

class TodoHomeViewModel {
  final TextEditingController searchController = TextEditingController();
  final ScrollController scrollHorizontalController = ScrollController();
  List<TodoModel> todos = [];
}
