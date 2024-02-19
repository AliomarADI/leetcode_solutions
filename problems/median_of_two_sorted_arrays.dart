class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    nums1 = nums1
      ..addAll(nums2)
      ..sort();

    if (nums1.isEmpty) {
      return 0;
    }
    if (nums1.length % 2 == 0) {
      return ((nums1[((nums1.length ~/ 2) - 1)]) + nums1[(nums1.length ~/ 2)]) /
          2;
    } else {
      return nums1[nums1.length ~/ 2].toDouble();
    }
  }

  //* run example
  // print(Solution().findMedianSortedArrays([1, 3], [2]));
  // print(Solution().findMedianSortedArrays([1, 2], [3, 4]));
}
