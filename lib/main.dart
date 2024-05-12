import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:untitled/pages/registration.dart';
import 'package:untitled/pages/menu.dart';
import 'package:untitled/pages/habits.dart';

import 'package:untitled/pages/setting.dart';
import 'package:untitled/pages/profile.dart';
import 'package:untitled/pages/ideliteit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    initialRoute: '/menu',
    routes: {
      '/': (context) => Reg(),
      '/menu': (context) => Menu(),
      '/hab': (context) => ListHabits(),
      '/set': (context) => Settings(), //еще не готово, настройки
      '/prof': (context) => Profile(), //будет профиль, пока затычка
      '/ff': (context) => FF() //ссылка на пасхалку, удалить
    },
  )
  );
}
