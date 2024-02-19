class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? dummyHead = ListNode(0);
    ListNode? current = dummyHead;
    int carry = 0;

    while (l1 != null || l2 != null) {
      int x = (l1 != null) ? l1.val : 0;
      int y = (l2 != null) ? l2.val : 0;
      int sum = carry + x + y;
      carry = sum ~/ 10;

      current?.next = ListNode(sum % 10);
      current = current?.next;

      if (l1 != null) l1 = l1.next;
      if (l2 != null) l2 = l2.next;
    }

    if (carry > 0) {
      current?.next = ListNode(carry);
    }

    return dummyHead.next;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '${val} ${next == null ? '' : next.toString()}';
  }
}


//* example to run
  // final ex11 = ListNode(
  //   2,
  //   ListNode(
  //     4,
  //     ListNode(3),
  //   ),
  // );

  // final ex12 = ListNode(
  //   5,
  //   ListNode(
  //     6,
  //     ListNode(4),
  //   ),
  // );

  // final ex21 = ListNode(0);
  // final ex22 = ListNode(0);

  // final ex31 = ListNode(
  //   9,
  //   ListNode(
  //     9,
  //     ListNode(
  //       9,
  //       ListNode(
  //         9,
  //         ListNode(
  //           9,
  //           ListNode(
  //             9,
  //             ListNode(
  //               9,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  // );

  // final ex32 = ListNode(
  //   9,
  //   ListNode(
  //     9,
  //     ListNode(
  //       9,
  //       ListNode(
  //         9,
  //       ),
  //     ),
  //   ),
  // );

  // print(Solution().addTwoNumbers(ex11, ex12).toString());
  // print(Solution().addTwoNumbers(ex21, ex22).toString());
  // print(Solution().addTwoNumbers(ex31, ex32).toString());