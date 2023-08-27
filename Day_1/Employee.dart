class Employee {
  final String name;
  final double salary;
  final String department;

Employee(this.name ,this.salary, this.department){


}


String? showDepartment(){
  print("********************************");
  var sonuc = "deprartment is $department";
  return sonuc;

}
}
