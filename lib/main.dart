void main() {
  Map<String, String> fruits = Map();
  fruits["Nahom"] = "Sileshi";
  fruits["Samule"] = "Branul";
  fruits["Things"] = "good";
  print(fruits["Nahom"]);

  for (String value in fruits.keys) {
    print(value);
    
    fruits.forEach((a, _) => print("key: $a and value : $_"));
  }
}
