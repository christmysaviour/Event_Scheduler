import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Event"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            tileColor: Colors.deepPurple,
            iconColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(50),
              //<-- SEE HERE
            ),
            leading: const Icon(Icons.calendar_month),
            subtitle: TextField(
              controller: textController,
              maxLines: null,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Event',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Builder(builder: (context) {
            return Container(
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  String newEventList = textController.text;
                  Navigator.of(context).pop(newEventList);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white60,
                    elevation: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: const  Text("ADD"),
              ),
            );
          }),
        ],
      ),
      backgroundColor: Colors.deepPurple[300],
    );
  }
}
