import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  bool isInputScreen = true;
  @override
  Widget build(BuildContext context) {
    if (isInputScreen)
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(
                      1000,
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        number++;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        number--;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.minimize,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                isInputScreen = false;
                setState(() {});
                print(number * number);
              },
              child: const Text(
                "Calculate the square",
              ),
            ),
          ],
        ),
      );
    else
      return Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              isInputScreen = true;
              setState(() {});
            },
          ),
          title: Text("Result Page"),
        ),
        body: Center(
          child: Text(
            (number * number).toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      );
  }
}
