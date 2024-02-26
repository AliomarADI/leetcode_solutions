class MySqrt {
  int mySqrt(int x) {
    if (x == 0 || x == 1) {
      return x;
    }

    double left = 1;

    while (left <= x) {
      left++;

      if (left * left > x) {
        return left.floor() - 1;
      } else if (left * left == x) {
        return left.floor();
      } else if (left * left >= x) {
        return left.toInt() - 1;
      }
    }

    return left.floor();
  }
}


  // print(MySqrt().mySqrt(4)); expect 2
  // print(MySqrt().mySqrt(9)); expect 3
  // print(MySqrt().mySqrt(8)); expect 2
  // print(MySqrt().mySqrt(247776352)); expect 15740