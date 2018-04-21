class A {
  static function divide(x, y) {
    if (y == 0)
      throw new Zero();
    return x / y;
  }

  static function main() {
    var x;

    try {
      x = divide(10, 5) * 10;
      x = x + divide(5, 0);
    }
    catch(e) {
      x = e.getValue();
    }
    finally {
      x = x + 100;
    }
    return x;
  }
}

class Zero {
  var value = 0;

  function getValue() {
    return value;
  }
}
