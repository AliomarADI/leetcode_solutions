class LongestCommonPrefix {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return '';
    }
    if (strs.first.isEmpty) {
      return '';
    }

    String result = strs.first[0];

    for (int i = 0; i < strs.first.length; i++) {
      for (int j = 0; j < strs.length; j++) {
        if (strs[j][i] == result[i]) {
          if (i != 0) {
            result = result + strs[j][i];
          } else {
            return '';
          }
        } else {
          return result;
        }
      }
    }

    return result;
  }
}

//* ex: 
//  print(LongestCommonPrefix().longestCommonPrefix(["flower", "flow", "flight"]));
