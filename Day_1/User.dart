class User {
  final UserRole role;
  String name;
  DateTime birthDate;

  User(this.role, this.name, this.birthDate){
    
  }

}
  enum UserRole {Student, Teacher, Manager}
