import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Lilian"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    child: Text("Click"),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                      //print(counter);
                    }),
                Text("$counter")
              ],
            )),
      ),
    ));
  }
}
