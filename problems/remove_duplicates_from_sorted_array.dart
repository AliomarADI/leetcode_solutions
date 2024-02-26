class RemoveDuplicatesFromSortedArray {
  int removeDuplicates(List<int> nums) {
    return nums.toSet().toList().length;
  }
}

//  print(RemoveDuplicatesFromSortedArray().removeDuplicates([1, 1, 2]));
  // print(RemoveDuplicatesFromSortedArray()
  //     .removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));