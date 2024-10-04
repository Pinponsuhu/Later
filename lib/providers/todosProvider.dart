import 'package:place/models/todos.dart';
import 'package:place/services/handleTodos.dart';
import 'package:riverpod/riverpod.dart';

class TodoNotifier extends StateNotifier<List<Todos>>{
  final HandleTodo handleTodo;

  TodoNotifier({required this.handleTodo}) : super([]);

  Future<void> fetchTodos() async{
    final todos = await handleTodo.getAll();
    state = todos;
  }

  Future<void> deleteById(int id) async{
    await handleTodo.deleteTodo(id);
    state = state.where((todo) => todo.id != id).toList();
  }

  Future<void> updateById(int id,bool status) async{
    await handleTodo.toggleStatus(id,status);
    state = [
      for (final t in state)
        if (t.id == id) t.copyWith(completed: !status) else t,
    ];
  }
}


final todoNotifierProvider = StateNotifierProvider<TodoNotifier, List<Todos>>((ref){
  return TodoNotifier(handleTodo: HandleTodo());
});