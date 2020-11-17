import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String image;
  final String title;
  final int id;
  Card1({this.image, this.title, this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      //margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      margin: EdgeInsets.only(top: 50.0),
      //padding: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 150.0,
            height: 150.0,
            // decoration: BoxDecoration(
            //     // image: DecorationImage(
            //     //     image: NetworkImage(
            //     //       image,
            //     //     ),
            //     //     fit: BoxFit.cover),
            //     ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(title),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Container(
            //padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(8.0),
            //alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Id= $id",
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final String image;
  final String title;
  final int id;
  Card2({this.image, this.title, this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.green,
              child: Image(
                image: NetworkImage(image),
              ),
            ),
            Expanded(
                child: Column(
              children: [Text(title), Text("$id")],
            ))
          ],
        ));
  }
}
