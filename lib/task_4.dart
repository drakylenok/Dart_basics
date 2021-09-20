class Task4 {
  Map<String, int> task(List<String> list) {
    Map<String, int> mas = {};
    for (var elem in list) {
      if (mas[elem] != null) {
        mas[elem] = mas[elem]! + 1;
      } else {
        mas[elem] = 1;
      }
    }
    return mas;
  }
}
