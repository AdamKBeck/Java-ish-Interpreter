class A {
  static var a = 1;
  static var b = 10;

  static function getSum() {
    return a + b;
  }
}

class B {
  static function main() {
    A.a = 5;

    return A.getSum() + C.x + C.timesX(A.a);
  }
}

class C {
  static var x = 100;
  static function timesX(a) {
    return a * x;
  }
}
