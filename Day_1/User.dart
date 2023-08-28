class User {
  final UserRole role;
  final UserName name;
  final DateTime? birthDate;

  User( this.role,  this.name, this.birthDate){
    
  }

}
  enum UserRole {Student, Teacher, Manager}
  enum UserName{Omer, Gizem, Ozcan}

extension UserRoleExtension on UserRole{
  String getUserRole(){
    switch(this){
      case UserRole.Student:
        return "Student Interface";
      case UserRole.Teacher:
        return "Teacher Interface";
      case UserRole.Manager:
        return "Manager Interface";
    }
  }
}


extension WordExtension on String {
  String upperCaseFirstWord(){
    return this.toUpperCase();
  }
}