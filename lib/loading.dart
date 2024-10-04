import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> nextPage() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text(
                "Later",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.green[900]!.withOpacity(0.9),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              SpinKitFadingCube(
                color: Colors.green[400],
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
