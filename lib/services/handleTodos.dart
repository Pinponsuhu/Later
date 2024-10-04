import 'package:place/models/todos.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HandleTodo {
  Future<List<Todos>> getAll() async {
    Response response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    if (response.statusCode == 200) {
      final List<dynamic> todosJson = json.decode(response.body);
      return todosJson.map((t) => Todos.fromJson(t)).toList();
    } else {
      throw Exception("Failed to fetch todos");
    }
  }

  Future<List<Todos>> deleteTodo(int todoId) async {
    Response response = await delete(
        Uri.parse("https://jsonplaceholder.typicode.com/todos/$todoId")

    );

    if (response.statusCode == 200) {
      print(response.statusCode);
      final getTodos = await this.getAll();
      return getTodos;
    } else {
      throw Exception("Failed to delete todo");
    }
  }
  
  Future<List<Todos>> toggleStatus(int id, bool status) async{
      print(!status);
    Response response = await patch(Uri.parse("https://jsonplaceholder.typicode.com/posts/$id"),
        body: {
          "completed": !status
        });
    if(response.statusCode == 200){
      print(response.statusCode);
      final getTodos = await this.getAll();
      return getTodos;
    }else{
      throw Exception("Failed to update todo");
    }
  }

  Future<List<Todos>> addNew(String title) async{
    Response response = await post(
      Uri.parse("uri"),
      body: {
        "title" : title
      }
    );

    if(response.statusCode == 200){
      final newList = await this.getAll();
      return newList;
    }else{
      throw Exception("Failed to add new todo");
    }
  }
}
