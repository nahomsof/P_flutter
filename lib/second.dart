import 'dart:async';

void main() {
  int b = 5;
  int a = 6;
  final total = getTotal(a, b);
  print(total);
}

getTotal(a, b) {
  Future.delayed(
    Duration(seconds: 7),
  );
  return a + b;
}
