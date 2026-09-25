import 'dart:io';
import 'dart:math';

double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => a / b;
double modulus(double a, double b) => a % b;
double power(double a, double b) => pow(a, b).toDouble();
double squareRoot(double a) => sqrt(a);

void main() {
  while (true) {
    print("\n===== ADVANCED CALCULATOR =====");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Modulus");
    print("6. Power");
    print("7. Square Root");
    print("8. Exit");

    stdout.write("Enter your choice: ");
    int? choice = int.tryParse(stdin.readLineSync() ?? "");

    if (choice == 8) {
      print("Calculator closed.");
      break;
    }

    if (choice == null || choice < 1 || choice > 8) {
      print("Invalid choice!");
      continue;
    }

    stdout.write("Enter first number: ");
    double? a = double.tryParse(stdin.readLineSync() ?? "");

    if (a == null) {
      print("Invalid number!");
      continue;
    }

    double result;

    switch (choice) {
      case 1:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null) {
          print("Invalid number!");
          continue;
        }
        result = add(a, b);
        print("Result: $a + $b = $result");
        break;

      case 2:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null) {
          print("Invalid number!");
          continue;
        }
        result = subtract(a, b);
        print("Result: $a - $b = $result");
        break;

      case 3:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null) {
          print("Invalid number!");
          continue;
        }
        result = multiply(a, b);
        print("Result: $a * $b = $result");
        break;

      case 4:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null || b == 0) {
          print("Division by zero is not allowed!");
          continue;
        }
        result = divide(a, b);
        print("Result: $a / $b = $result");
        break;

      case 5:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null || b == 0) {
          print("Modulus by zero is not allowed!");
          continue;
        }
        result = modulus(a, b);
        print("Result: $a % $b = $result");
        break;

      case 6:
        stdout.write("Enter second number: ");
        double? b = double.tryParse(stdin.readLineSync() ?? "");
        if (b == null) {
          print("Invalid number!");
          continue;
        }
        result = power(a, b);
        print("Result: $a ^ $b = $result");
        break;

      case 7:
        if (a < 0) {
          print("Square root of a negative number is not allowed!");
          continue;
        }
        result = squareRoot(a);
        print("Result: √$a = $result");
        break;

      default:
        print("Invalid choice!");
    }
  }
}