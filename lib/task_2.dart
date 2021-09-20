class Task2 {
  int to10System(String x) {
    return int.parse(x, radix: 2);
  }

  String to2System(int x) {
    String str = '';
    do {
      str = (x % 2).toString() + str;
      x = x ~/ 2;
    } while (x >= 2);
    str = (x % 2).toString() + str;
    return str;
  }
}
