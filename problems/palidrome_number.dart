class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    if (x < 10) {
      return true;
    }

    String test = x.toString();

    for (var i = 0; i <= (test.length - 1) / 2; i++) {
      if (test[i] != test[test.length - i - 1]) {
        return false;
      }
    }

    return true;
  }
}

//* the best solution:

// class Solution {
//   bool isPalindrome(int x) {
//     if (x < 0) {
//       return false;
//     }

//     int original = x;
//     int reversed = 0;

//     while (x > 0) {
//       int digit = x % 10;
//       reversed = reversed * 10 + digit;
//       x ~/= 10;
//     }

//     return original == reversed;
//   }
// }


//* run example
  // print('121 is palidrome: ${Solution().isPalindrome(121)}');
  // print('-121 is palidrome: ${Solution().isPalindrome(-121)}');
  // print('10 is palidrome: ${Solution().isPalindrome(10)}');
  // print('1001 is palidrome: ${Solution().isPalindrome(1001)}');
  // print('10001 is palidrome: ${Solution().isPalindrome(10001)}');