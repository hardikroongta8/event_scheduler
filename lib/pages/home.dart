// ignore_for_file: prefer_const_constructors
import 'package:event_scheduler/pages/add_event.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final eventList = [];

  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Event Scheduler'),
        backgroundColor: Colors.red[700],
        elevation: 2,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final e = await Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => AddEvent()
            )
          );
          setState(() {
            _list.add(
              Container(
                width: 180,
                //color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade200,
                      offset: Offset(1, 1),
                      spreadRadius: 0.5,
                      blurRadius: 1
                    )
                  ]
                ),
                
                margin: EdgeInsets.only(bottom: 12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Text(e, style: TextStyle(fontSize: 15),),
                )
              ),              
            );
          });
        },
        backgroundColor: Colors.red[700],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])
          )
        ),
      ),
    );
  }
}