import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Вообще, я создала этот файл чтобы попробовать в нем вставлять картинку на фон, и думала, что удалю его потом, но теперь это пасхалка
// Знакомьтесь, это Гоба
// Гоба хороший

class FF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/delit.png'), fit: BoxFit.cover),
      ),
      child: Center(child: Icon(Icons.local_fire_department_rounded, color: Colors.red, size: 300,)),
    );
  }
}
