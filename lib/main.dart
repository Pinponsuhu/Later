import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:place/details.dart';
import 'package:place/home.dart';
import 'package:place/loading.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context)=> LoadingScreen(),
        '/home': (context)=> HomeScreen(),
        '/details': (context)=> EditTodo(),
      },
      builder: EasyLoading.init(),
    );
  }
}
