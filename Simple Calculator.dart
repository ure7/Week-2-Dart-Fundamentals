import 'dart:io';

void main() {
  double result, num1, num2;
  String op, answer;
  bool s;

  do {
    print("Enter the first number: ");
    num1 = double.parse(stdin.readLineSync()!);

    print("Enter the seconed number: ");
    num2 = double.parse(stdin.readLineSync()!);

    print("Enter an artemathic opreation(+,-,*,/): ");
    op = stdin.readLineSync()!;

    switch (op) {
      case '+':
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "*":
        result = num1 * num2;
        break;
      case "/":
        result = num1 / num2;
        break;
      default:
        print("Try again :> , u entered wrong input");
        result = 0;
    }
    print("The result: $result");

    print("Do you want to try again?(Y,N): ");
    answer = (stdin.readLineSync()!);
    s = value(answer);
  } while (s == true);
  {}
  print("Calculator closed");
}

bool value(String t) {
  if (t == "Y" || t == "y") {
    return true;
  } else if (t == "N" || t == "n") {
    return false;
  } else {
    print("Wrong input :<");
    return false;
  }
}
