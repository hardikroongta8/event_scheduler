// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  dynamic event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Colors.red[700],
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    minLines: 1,
                    maxLines: 10,
                    controller: TextEditingController(),
                    onChanged: (value) {
                      event = value;
                    },
                    cursorColor: Colors.red[300],
                    cursorWidth: 1,
                    cursorHeight: 24,
                    textAlignVertical: TextAlignVertical.center,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      hintText: 'Event Details',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1.5, color: Colors.red)
                      ),
                      fillColor: Colors.red.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 0.5,)
                      ),
                      prefixIcon: Icon(Icons.event, color: Colors.red[700],),
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red[700]),
                        fixedSize: MaterialStateProperty.all(Size(100, 40))
                      ),
                      onPressed: (){
                        Navigator.pop(
                          context,
                          event
                        );                
                      },
                      child: Text('Add', style: TextStyle(fontSize: 20),)
                    ),
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}