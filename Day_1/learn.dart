void main(List<String> args){
  String name = "Omer";
  int num = 1;
  print("hello world ${num}");
  print(name);

  try {
    print(int.parse(name));
  } catch (e) {
    print("this is not correct");  
  }
}