import 'User.dart';

void main(){
  User user1 = new User(UserRole.Student, UserName.Omer, DateTime.now());
  // User user2 = new User("Teacher", "Gizem", DateTime.now());
  // User user3 = new User("Manager", "Ozcan", DateTime.now());

  switch(user1.role){
    case UserRole.Student:
      print("Student Interface");
    case UserRole.Manager:
      print("Manager Interface");
    case UserRole.Teacher:
    print("Teacher Interface");
  
  }

  String word = "hello";
  print(word.upperCaseFirstWord());
  


}