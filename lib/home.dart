import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:place/providers/todosProvider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(()=> ref.read(todoNotifierProvider.notifier).fetchTodos());
  }
  @override
  Widget build(BuildContext context) {
    final allTodos = ref.watch(todoNotifierProvider);
    final todoNotifier = ref.read(todoNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[50],
        title: Text(
          "Todos",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green[800]),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: allTodos.isEmpty ? Center(
        child: SpinKitCubeGrid(
          color: Colors.green,
          size: 32,
        ),
      ) : Padding(
        padding: const EdgeInsets.fromLTRB(16,16,16,0),
        child: ListView.builder(
          itemCount: allTodos.length,
            itemBuilder: (context,index){
            final todo = allTodos[index];
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, "/details", arguments: {
                    "title": todo.title,
                    "id": todo.id,
                    "status": todo.completed
                  });
                },
                tileColor: Colors.white,
                title: Text(
                    todo.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(todo.completed? "Completed" : "Active"),
                trailing: IconButton(
                    onPressed: () async{
                      EasyLoading.show(
                          status: 'Deleting...',
                      );
                     await todoNotifier.deleteById(todo.id);
                     EasyLoading.dismiss();
                    },
                    icon: Icon(Icons.delete,color: Colors.red[400],)),
              ),
            );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
              builder: (context){
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(16,16,16,16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/56388358?v=4",
                        ),
                        radius: 80,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                          "Coded by Pinponsuhu 'Phenom' Joseph",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                );
              }
          );
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.info_outline_rounded,
          color: Colors.green[500],
          size: 28,
        ),
      ),
    );
  }
}
