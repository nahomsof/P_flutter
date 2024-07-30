import 'dart:async';

void main() {
  int b = 5;
  int a = 6;
  final total = getTotal(a, b);
  print(total);
}

Future<void> getTotal(a, b) {
  return Future.delayed(Duration(seconds: 2), () => (a + b));

}
