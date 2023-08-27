void main(List<String> args){

  // showNumber(name: "omer",id: 99999, age: 25);
  
  print(calculateDiscount(25));
}

void showNumber({
  required int id,
  String? name,
  int? age,
  List<String>? users,
})
    {
      print(" your name is $name, your age is $age, your id is $id");
    }

 double discount = 0.1; 
    double calculateDiscount(double price){
      double calcDis =  price * discount;
    return calcDis;
    }
