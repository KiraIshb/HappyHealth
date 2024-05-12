import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Reg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      margin: EdgeInsets.only(left: 15, right: 15),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/gradient_full.jpg'), fit: BoxFit.cover),
        ),
        child: Center(child: Icon(Icons.radio_button_checked_outlined, size: 200, color: Colors.black)),
      ),
      panel: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: /*Center(
                child: Icon(Icons.arrow_drop_up, size: 30),
              ),
              bottom:*/ TabBar(
                tabs: [
                  Tab(text: 'Вход', height: 70,),
                  Tab(text: 'Регистрация', height: 70),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    Text('Электронная почта или Имя пользователя'),
                    Text('тут будет поле для ввода'),
                    Text('Пароль'),
                    Text('тут будет поле для ввода')
                  ],
                ),
                Column(
                  children: [
                    Text('Имя пользователя'),
                    Text('тут будет поле для ввода'),
                    Text('Электронная почта"'),
                    Text('тут будет поле для ввода'),
                    Text('Пароль'),
                    Text('тут будет поле для ввода'),
                    Text('Повторите пароль'),
                    Text('тут будет поле для ввода')
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
