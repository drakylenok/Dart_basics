class Task1 {
  int nod(int a, int b) {
    while (a != 0 && b != 0) {
      if (a > b) {
        a = a % b;
      } else {
        b = b % a;
      }
    }
    return (a + b);
  }

  int nok(int a, int b) {
    return (a * b ~/ nod(a, b));
  }

  List<int> razlNaPrMn(int a) {
    List<int> mas = [];
    int now = 2;
    while (a > 1) {
      if (a % now == 0) {
        mas.add(now);
        a = a ~/ now;
      } else {
        now++;
      }
    }
    return mas;
  }
}
