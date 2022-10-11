import 'package:flutter/material.dart';

class Helpers {
  static bool isPrime(int number) {
    for (var i = 2; i <= number / i; ++i) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  static outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
  }

  static bool isNumber(value) {
    var val = int.tryParse(value.trim());
    if (val == null) {
      return false;
    }
    return true;
  }

  static int leastCommonMultiple(int a, int b) {
    if ((a == 0) || (b == 0)) {
      return 0;
    }

    return ((a ~/ greatestCommonDivisor(a, b)) * b).abs();
  }

  static int greatestCommonDivisor(int a, int b) => a.gcd(b);

  static int leastCommonMultipleOfMany(List<int> integers) {
    if (integers.isEmpty) {
      return 1;
    }

    var lcm = integers[0].abs();

    for (var i = 1; i < integers.length; i++) {
      lcm = leastCommonMultiple(lcm, integers[i]);
    }

    return lcm;
  }

  static int greatestCommonDivisorOfMany(List<int> integers) {
    if (integers.isEmpty) {
      return 0;
    }

    var gcd = integers[0].abs();

    for (var i = 1; (i < integers.length) && (gcd > 1); i++) {
      gcd = greatestCommonDivisor(gcd, integers[i]);
    }

    return gcd;
  }
}
