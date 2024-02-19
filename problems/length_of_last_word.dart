class Solution {
  int lengthOfLastWord(String s) {
    final list = s.split(' ');

    for (int i = list.length - 1; i >= 0; i--) {
      if (list[i].isNotEmpty) {
        return list[i].length;
      }
    }

    return list.last.replaceAll(' ', '').length;
  }
}

//* run example
  // print(Solution().lengthOfLastWord('Hello World'));
  // print(Solution().lengthOfLastWord('   fly me   to   the moon  '));
  // print(Solution().lengthOfLastWord('luffy is still joyboy'));
  // print(Solution().lengthOfLastWord('a '));