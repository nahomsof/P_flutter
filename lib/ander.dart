void main() {
  (String name, int age) userdefine(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 48,
    'greate': "gooder",
  };
  var (name, age) = userdefine(json);
  print(name);
  print(age == 48);
}
