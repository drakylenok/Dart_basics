class Task5 {
  Set<int> task5(String str) {
    Map<String, int> numbers = {
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9,
      "zero": 0
    };
    Set<int> ret = {};
    for (var x in str.split(', ')) {
      if (numbers[x] != null) {
        ret.add(numbers[x] as int);
      }
    }
    return ret;
  }
}
