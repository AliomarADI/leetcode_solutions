class ValidParentheses {
  bool isValid(String s) {
    final Map<String, String> bracketMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    final List<String> stack = [];

    for (var char in s.split('')) {
      if (bracketMap.containsValue(char)) {
        stack.add(char);
      } else if (bracketMap.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != bracketMap[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}


//* run ex
  // print(ValidParentheses().isValid('()')); // expect true
  // print(ValidParentheses().isValid('()[]{}')); // expect true
  // print(ValidParentheses().isValid('(]')); // expect false
  // print(ValidParentheses().isValid('{[]}')); // expect true
  // print(ValidParentheses().isValid('([)]')); // expect false