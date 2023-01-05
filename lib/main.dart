import 'package:flutter/material.dart';

import 'new_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            // padding: const EdgeInsets.all(8),
            itemCount: _list.length,
            itemBuilder: ((context, index) => SizedBox(
                  height: 90,
                  child: Card(
                      color: Colors.white,
                      elevation: 10,
                      margin: const EdgeInsets.all(10),
                      child: Center(
                        child: _list[index],
                      )),
                ))),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(
                  Text(newText, style: TextStyle(
                    fontSize: 19,

                  )),
                );
              });
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.deepPurple,
          );
        }),
        backgroundColor: Colors.deepPurple[300],
      ),
    );
  }
}

//
