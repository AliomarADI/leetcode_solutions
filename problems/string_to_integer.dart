import 'dart:math';

class StringToInteger {
  int myAtoi(String s) {
    String sInt = '';
    for (int i = 0; i < s.length; i++) {
      if (int.tryParse(s[i]) != null || s[i] == '-') {
        sInt += s[i];
      }
    }

    if (pow(2, 31) - 1 <= int.parse(sInt)) {
      return 0;
    }

    if (pow(-2, 31) - 1 >= int.parse(sInt)) {
      return 0;
    }

    return int.tryParse(sInt) ?? 0;
  }
}
