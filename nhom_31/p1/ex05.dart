/**
Bài tập:
  1. Viết chương trình chuyển đổi 1 số 
  nguyên (b>=1) được nhập từ bàn phím 
  thành số nhị phân.

2. Viết chương trình tính tổng
 các ước số của một số nguyên được 
 nhập từ bàn phím (n>=1). 
 */

import 'dart:io';
import 'dart:math';

void main() {
  //Bài 1
  print("Nhập vào một số nguyên (b >= 1):");
  int? b = int.parse(stdin.readLineSync()!);

  if (b >= 1) {
    String binary = b.toRadixString(2); // Chuyển số thành chuỗi nhị phân
    print("Số nhị phân của $b là: $binary");
  } else {
    print("Vui lòng nhập một số nguyên lớn hơn hoặc bằng 1.");
  }

  //Bài 2
  print("Nhập vào một số nguyên (n >= 1):");
  int? n = int.parse(stdin.readLineSync()!);

  if (n >= 1) {
    int sum = 0;

    // Tính tổng các ước số
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        sum += i;
      }
    }

    print("Tổng các ước số của $n là: $sum");
  } else {
    print("Vui lòng nhập một số nguyên lớn hơn hoặc bằng 1.");
  }
}
