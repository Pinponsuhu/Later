import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:place/providers/todosProvider.dart';

class EditTodo extends ConsumerStatefulWidget {
  const EditTodo({Key? key}) : super(key: key);

  @override
  ConsumerState<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends ConsumerState<EditTodo> {
  String _body = "Lorem ipsum felis lectus commodo pretium aptent convallis ornare, ullamcorper nullam libero fringilla semper porttitor gravida. Pulvinar euismod hendrerit ipsum quis hendrerit quisque praesent vivamus, commodo diam ipsum arcu elit laoreet malesuada curabitur, augue phasellus leo lectus non ullamcorper dui. Consequat purus bibendum cubilia nullam praesent laoreet, posuere vehicula eleifend metus luctus ad tristique, elementum inceptos sodales proin tincidunt. Semper vivamus himenaeos id mi tempus imperdiet ultrices vivamus, per orci lacinia ut et torquent ut fermentum, sagittis consequat odio netus quisque ante ullamcorper.";
  @override
  Widget build(BuildContext context) {
    final details = ModalRoute.of(context)!.settings.arguments as Map?;
    print(details.runtimeType);
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[50]!.withOpacity(0.5),
        title: Column(
          children: [
            Text(
              "View Todo",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]),
            ),
            SizedBox(
              height: 3
            ),
            Text(
              "Todo #${details!['id']} status: ${details['status'] ? "Completed" : "Active"}",
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[500]),
            )
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            Text(
                "${details!['title']}",
              style: TextStyle(
                fontSize: 16,
                height: 2,
              ),
            )
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
          onPressed: ()async{
          EasyLoading.show(status: "Deleting");
            await ref.read(todoNotifierProvider.notifier).deleteById(details['id']);
            EasyLoading.dismiss();
            Navigator.pop(context);
          },
        child: Icon(Icons.delete,color: Colors.red[400],size: 28,),
      ),
    );
  }
}
