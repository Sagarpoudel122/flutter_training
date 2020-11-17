import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [];
  Random random = Random();

  Future<String> getUserDataFromBackend() async {
    String username = await Future.delayed(Duration(seconds: 10), () {
      return "Sagar Poudel";
    });
    return username;
  }

  @override
  void initState() {
    int randomNumber = random.nextInt(1000);
    numbers.add(randomNumber);
    super.initState();
  }

  void addRandomNumber(int randomNumber) {
    setState(() {
      numbers.add(randomNumber);
    });
  }

  int sumOfNumbers() {
    int total = 0;
    numbers.forEach((element) {
      total += element;
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    int randomNumber = random.nextInt(1000);
    return Scaffold(
      body: FutureBuilder(
          // initialData: "Maneesha",
          future: getUserDataFromBackend(),
          builder:
              (BuildContext buildContext, AsyncSnapshot<String> asyncSnapshot) {
            // if(asyncSnapshot.connectionState.index)
            // print(asyncSnapshot.connectionState.);
            if (asyncSnapshot.hasData) {
              return Container(
                alignment: Alignment.center,
                child: Text(asyncSnapshot.data),
              );
            } else if (asyncSnapshot.error != null) {
              return Text(asyncSnapshot.error.toString());
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
