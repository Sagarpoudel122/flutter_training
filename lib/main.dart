import 'package:flutter/material.dart';
import 'package:training1/screens/HomeScreen.dart';
import 'package:training1/screens/ImagesScreen.dart';
import 'package:training1/screens/QuizScreen.dart';

void main() {
  print("Page");
  // employeeTask();
  // managerTask();
  runApp(MyApp());
}

managerTask() async {
  String managerTask = await Future.delayed(Duration(seconds: 6), () {
    return "Manager Task";
  });
  print(managerTask);
}

employeeTask() async {
  String subTask1 = await Future.delayed(Duration(seconds: 2), () {
    return "Employee Sub-Task One is Completed";
  });
  print(subTask1);
  String subTask2 = await Future.delayed(Duration(seconds: 4), () {
    return "Employee Sub-Task Two is Completed";
  });
  print(subTask2);
}

employeeTask2() async {
  // subTask1.then((value) {
  //   print(value + "sub Task 2");
  // });
  // print(subTask1);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ImageScreen(),
    );
  }
}
