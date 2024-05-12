import 'package:flutter/material.dart';

import 'package:untitled/pages/habits_class.dart';

class ListHabits extends StatefulWidget {
  const ListHabits({super.key});

  @override
  State<ListHabits> createState() => _ListHabitsState();
}

class _ListHabitsState extends State<ListHabits> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(30),
              child: ListView(
                children: [
                  xz(state1: 'Бег', state2: 'Цель: научиться бегать марафон'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  xz(state1: 'Пить воду', state2: 'Дневная норма составляет 2 литра')
                ],
              ),
          ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return Center(
              child: Text('добавление привычки', style: TextStyle(color: Colors.black, decoration: TextDecoration.none),),
            );
          });
        },
          child: Icon(Icons.add),
          backgroundColor: Colors.deepPurple[200],
    ),
    );
  }
}