// ignore_for_file: unused_local_variable

class RomanToInteger {
  int romanToInt(String s) {
    int years = 0;
    bool isMinBeforeMax = false;

    for (var i = 0; i < s.length; i++) {
      if (s.length - 1 == i) {
        // if (isMinBeforeMax) {
        //   return years;
        // }
        return years + symbolToValue(s[i]);
      } else {
        if (symbolToValue(s[i]) < symbolToValue(s[i + 1])) {
          years += symbolToValue(s[i + 1]) - symbolToValue(s[i]);
          i++;
          isMinBeforeMax = true;
        } else {
          isMinBeforeMax = false;
          years += symbolToValue(s[i]);
        }
      }
    }
    return years;
  }

  //MDCXCV

  int symbolToValue(String symbol) {
    switch (symbol) {
      case 'I':
        return 1;
      case 'V':
        return 5;
      case 'X':
        return 10;
      case 'L':
        return 50;
      case 'C':
        return 100;
      case 'D':
        return 500;
      case 'M':
        return 1000;
      default:
        return 1;
    }
  }
}

//* test example
// print(RomanToInteger().romanToInt('III'));
//   print(RomanToInteger().romanToInt('LVIII'));
//   print(RomanToInteger().romanToInt('MCMXCIV'));
//   print(RomanToInteger().romanToInt('MCMXCVI'));
//   print(RomanToInteger().romanToInt('MDCXCV'));