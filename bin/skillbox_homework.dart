//import 'package:skillbox_homework/skillbox_homework.dart' as skillbox_homework;
import 'package:skillbox_homework/task_1.dart';
import 'package:skillbox_homework/task_2.dart';
import 'package:skillbox_homework/task_3.dart';
import 'package:skillbox_homework/task_4.dart';
import 'package:skillbox_homework/task_5.dart';
import 'package:skillbox_homework/task_6.dart';
import 'package:skillbox_homework/task_8.dart';

extension on num {
  num sqrt(int n) {
    if (this >= 0) {
      num number = this;
      int rootDegree = n;

      num eps = 0.00001; //допустимая погрешность
      num root = number / rootDegree; //начальное приближение корня
      num rn = number; //значение корня последовательным делением
      while ((root - rn) * (root - rn) >= eps) {
        rn = number;
        for (int i = 1; i < rootDegree; i++) {
          rn = rn / root;
        }
        root = 0.5 * (rn + root);
      }

      return root;
    } else {
      throw "Число отрицательное";
    }
  }
}

void main(List<String> arguments) {
  Task1 task1 = Task1();
  print(task1.nod(30, 10)); //НОД 30 и 10
  print(task1.nok(30, 10)); //НОК 30 и 10
  print(task1.razlNaPrMn(144));
  print('');

  Task2 task2 = Task2();
  print(task2.to2System(523)); //В двоичную
  print(task2.to10System("1000001011")); //В десятичную
  print('');

  Task3 task3 = Task3();
  print(task3.stringWordToCollection("1 7 Itasd 5.4")); //Строка в коллекцию int
  print('');

  Task4 task4 = Task4();
  print(task4.task(["hi", "hi", "low", "hi"])); //Строка в коллекцию int
  print('');

  Task5 task5 = Task5();
  print(task5.task5('one, two, zero, zero'));
  print('');

  Point p1 = Point(0, 0, 0);
  Point p2 = Point(1, 1, 1);
  print(p1.distanceTo(p2));
  print('');

  num number = 8;
  print(number.sqrt(3));
  print('');

  //AdminUser task8 = AdminUser();
  // print(task8.getMailSystem("lot@email.ru"));
  //print('');

  UserManager users = UserManager();
  users.addUser(AdminUser('123@mail.ru'));
  users.addUser(GeneralUser('456@yandex.ru'));
  users.print_users();
}
