class PlusOne {
  List<int> plusOne(List<int> digits) {
    if (digits.isEmpty) {
      return [1];
    }

    String digitsStr = '';

    for (int element in digits) {
      digitsStr += element.toString();
    }

    digits.clear();
    for (var element
        in (BigInt.parse(digitsStr) + BigInt.one).toString().split('')) {
      digits.add(int.parse(element).toInt());
    }

    return digits;
  }
}


// print(PlusOne().plusOne([1, 2, 3]));
//   print(PlusOne().plusOne([4, 3, 2, 1]));
//   print(PlusOne().plusOne([9]));
//   print(PlusOne().plusOne([9, 9]));
//   print(
//     PlusOne().plusOne(
//       [
//         7,
//         2,
//         8,
//         5,
//         0,
//         9,
//         1,
//         2,
//         9,
//         5,
//         3,
//         6,
//         6,
//         7,
//         3,
//         2,
//         8,
//         4,
//         3,
//         7,
//         9,
//         5,
//         7,
//         7,
//         4,
//         7,
//         4,
//         9,
//         4,
//         7,
//         0,
//         1,
//         1,
//         1,
//         7,
//         4,
//         0,
//         0,
//         6,
//       ],
//     ),
//   );