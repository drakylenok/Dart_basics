class Task3 {
  List<num> stringWordToCollection(String str) {
    List<num> mas = [];
    List<String> mas_str = str.split(' ');
    for (var elem in mas_str) {
      if (num.tryParse(elem) != null) {
        mas.add(num.parse(elem));
      }
    }
    return mas;
  }
}
