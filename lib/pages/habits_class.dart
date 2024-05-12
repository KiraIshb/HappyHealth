import 'package:flutter/material.dart';

class xz extends StatefulWidget {

  String state1;
  String state2;

  xz({super.key, required this.state1, required this.state2});

  @override
  State<xz> createState() => _xz(this.state1, this.state2);
}

class _xz extends State<xz> {

  bool ab = true;
  String state1;
  String state2;

  _xz(this.state1, this.state2);

  Padding _state1(){
    return Padding(
        padding: EdgeInsets.all(20),
        child: Text(state1, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600, decoration: TextDecoration.none))
    );
  }

  Padding _state2(){
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(state1, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600, decoration: TextDecoration.none)),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: [
                  Image(image: AssetImage('assets/bell.png'), width: 25, height: 25),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text('Пн-Пт', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.none)),
                  Text(' 10.00-11.00', style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500, decoration: TextDecoration.none))
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(state2, style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500, decoration: TextDecoration.none)),
              Padding(padding: EdgeInsets.only(top: 20)),
              TextButton(onPressed: () {}, child: Row(
                children: [
                  Image(image: AssetImage('assets/pen.png'), width: 25, height: 25),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text('Изменить привычку', style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),)
                ],
              )
              )
            ]
        )
    );
  }

  reverse() {
    setState(() {
      ab = ab? false:true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: reverse,
        child: DecoratedBox(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/gradient_full.jpg'), fit: BoxFit.none), borderRadius: BorderRadius.circular(17)),
            child: ab? _state1():_state2()
        )
    );
  }
}