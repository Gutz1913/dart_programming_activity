import 'dart:math';

class MyMath {
  static double  factorial(int n) {
    double factorial = 1;
    for (int i = 2; i <= n; i++) {
      factorial *= i;
    }
    return factorial;
  }

  static bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}