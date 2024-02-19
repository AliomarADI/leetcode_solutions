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
