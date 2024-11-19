/* 
Bài tập giải phương trình bậc 2
*/
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;

  //nhập a
  do {
    stdout.write("Nhập hệ số a (a khác 0):");
    String? inputA = stdin.readLineSync();
    if (inputA != null) {
      a = double.tryParse(inputA) ?? 0;
    }
    if (a == 0) {
      print("Hệ số a phải khác 0, vui lòng nhập lại!");
    }
  } while (a == 0);

  //nhập b
  stdout.write("Nhập hệ số b:");
  String? inputB = stdin.readLineSync();
  if (inputB != null) {
    b = double.tryParse(inputB) ?? 0;
  }
  stdout.write("Nhập hệ số c:");
  String? inputC = stdin.readLineSync();
  if (inputC != null) {
    c = double.tryParse(inputC) ?? 0;
  }

  //hiển thị phương trình
  print("/n Phương trình: ${a}x^2 + ${b}x + ${c} = 0");

  // Tính delta
  double delta = b * b - 4 * a * c;
  print('Delta = $delta');

  // Giải phương trình dựa vào delta
  if (delta < 0) {
    print('Phương trình vô nghiệm');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    // Làm tròn đến 2 chữ số thập phân
    x = double.parse(x.toStringAsFixed(2));
    print('Phương trình có nghiệm kép x = $x');
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    // Làm tròn đến 2 chữ số thập phân
    x1 = double.parse(x1.toStringAsFixed(2));
    x2 = double.parse(x2.toStringAsFixed(2));
    print('Phương trình có 2 nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}
