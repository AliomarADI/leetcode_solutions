class LengthOfLastWord {
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
  // print(LengthOfLastWord().lengthOfLastWord('Hello World'));
  // print(LengthOfLastWord().lengthOfLastWord('   fly me   to   the moon  '));
  // print(LengthOfLastWord().lengthOfLastWord('luffy is still joyboy'));
  // print(LengthOfLastWord().lengthOfLastWord('a '));