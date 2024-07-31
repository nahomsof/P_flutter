import 'dart:async';

void main() async {
  int b = 5;
  int a = 6;
  double c = 3.142434525452452;
  bool bolean;
  String tostring = b.toString();
  String d = c.toStringAsFixed(2);
  assert(b == "5");
  final total = await getTotal(a, b);
  print(total);
  print(d);
  (tostring == "5") ? print("True") : print("Fales");
}

Future<int> getTotal(a, b) {
  return Future.delayed(Duration(seconds: 2), () => a + b);
}
