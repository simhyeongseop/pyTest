import 'dart:io';

void main() {
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print('잘못된 입력입니다.');
  } else {
    print('결과: ${sumOfDigits(number)}');
  }
}

int sumOfDigits(int num) {
  if (num < 0) return 0;

  int sum = 0;
  while (num > 0) {
    sum += num % 10; // 각 자리수 더하기
    num ~/= 10;      // 정수 나눗셈
  }
  return sum;
  
}
