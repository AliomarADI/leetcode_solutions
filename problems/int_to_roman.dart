//TODO задачка не решена

class IntToRoman {
  String intToRoman(int num) {
    String roman = '';

    const symbols = {
      1: 'I',
      5: 'V',
      10: 'X',
      50: 'L',
      100: 'C',
      500: 'D',
      1000: 'M',
    };

    while (num != 0) {
      int temp = num % 10;
      if (symbols.containsKey(temp)) {
        roman += roman[temp];
      } else {}
    }

    return roman.split('').reversed.join();
  }
}
