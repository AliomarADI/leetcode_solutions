//TODO linked list нужно трениться!

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class SortLinkedList {
  ListNode? sortList(ListNode? head) {
    if (head == null || head.next == null) {
      return head;
    }

    bool swapped;
    ListNode? ptr1;
    ListNode? ptr2 = null;

    do {
      swapped = false;
      ptr1 = head;

      while (ptr1!.next != ptr2) {
        if (ptr1.val > ptr1.next!.val) {
          int temp = ptr1.val;
          ptr1.val = ptr1.next!.val;
          ptr1.next!.val = temp;
          swapped = true;
        }
        ptr1 = ptr1.next;
      }
      ptr2 = ptr1;
    } while (swapped);

    return head;
  }
}
