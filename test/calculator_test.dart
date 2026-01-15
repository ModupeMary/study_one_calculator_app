import 'package:flutter_test/flutter_test.dart';
import '../lib/logic/calculator.dart'; // path to your logic file

void main() {
  group('Calculator tests', () {
    final calculator = Calculator();

    test('Addition works', () {
      expect(calculator.add(2, 3), 5);
    });

    test('Subtraction works', () {
      expect(calculator.subtract(5, 3), 2);
    });

    test('Multiplication works', () {
      expect(calculator.multiply(4, 3), 12);
    });

    test('Division works', () {
      expect(calculator.divide(10, 2), 5);
    });

    test('Division by zero throws', () {
      expect(() => calculator.divide(5, 0), throwsArgumentError);
    });

    test('Modulo works', () {
      expect(calculator.modulo(10, 3), 1);
    });
  });
}
