import 'dart:math';

class ReverseInteger {
  int reverse(int x) {
    String reversedX = '';

    for (var i = x.toString().length; i > 0; i--) {
      reversedX += x.toString()[i - 1];
    }

    if (reversedX[reversedX.length - 1] == '-') {
      reversedX = '-' + reversedX.substring(0, reversedX.length - 1);
    }

    if (pow(2, 31) - 1 <= int.parse(reversedX)) {
      return 0;
    }

    if (pow(-2, 31) - 1 >= int.parse(reversedX)) {
      return 0;
    }

    if (reversedX.isEmpty) {
      return 0;
    }

    return int.parse(reversedX);
  }
}
