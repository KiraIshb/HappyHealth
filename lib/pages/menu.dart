import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  DecoratedBox Grad(TextButton buttonMenu, String backImage)
  {
    return DecoratedBox(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(backImage), fit: BoxFit.none), borderRadius: BorderRadius.circular(17)),
      child: buttonMenu,
    );
  }

  TextButton ButtonInMenu(String textOn, String nav, BuildContext context)
  {
    return TextButton(onPressed: () {
      Navigator.pushNamed(context, nav);
    }, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textOn, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),
          Icon(Icons.arrow_forward_outlined, color: Colors.black),
        ]
    ),
        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(25)),
            /*shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            )*/)
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              TextButton(onPressed: () {
                Navigator.pushNamed(context, '/set');
              } , child: Row(
                children: [
                  Icon(Icons.settings, weight: 5, color: Colors.black,),
                  Text('    '),
                  Text('Настройки', style: TextStyle(color: Colors.black ,fontSize: 15, decoration: TextDecoration.underline),)
                ],
              )),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Grad(ButtonInMenu('Мой профиль', '/prof', context),'assets/gradient1.jpg'),
              Padding(padding: EdgeInsets.only(top: 40)),

              Grad(ButtonInMenu('Мои привычки', '/hab', context),'assets/gradient2.jpg'),
              Padding(padding: EdgeInsets.only(top: 40)),

              Grad(ButtonInMenu('Мои достижения', '/prof', context),'assets/gradient3.jpg'),
              Padding(padding: EdgeInsets.only(top: 40)),

              Grad(ButtonInMenu('Статистика', '/ff', context),'assets/gradient4.jpg')
            ],
          ),
        ),
      ),
    );
  }
}
