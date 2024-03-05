import 'dart:convert';

class LoginModel{
  final String name;
  final String age;
  final String email;
  final String phonenumber;
  final String organization;
  final String club;
  final String interests;
  final String desc;

  LoginModel(
      this.name,
      this.age,
      this.email,
      this.phonenumber,
      this.organization,
      this.club,
      this.interests,
      this.desc
      );

  LoginModel copyWith({
  String? name,
    String? age,
    String? email,
    String? phonenumber,
    String? organization,
    String? club,
    String? interests,
    String? desc
}){
    return LoginModel(
        name ?? this.name,
        age ?? this.age,
        email ?? this.email,
        phonenumber ?? this.phonenumber,
        organization ?? this.organization,
        club ?? this.club,
        interests ?? this.interests,
        desc ?? this.desc);
  }

  Map<String,dynamic> toMap(){
    return<String,dynamic>{
      'name':name,
      'age':age,
      'email':email,
      'phonenumber':phonenumber,
      'organization':organization,
      'club':club,
      'interests':interests,
      'desc':desc
    };
  }

  factory LoginModel.fromMap(Map<String,dynamic> map){
    return LoginModel(
        map['name'] as String,
        map['age'] as String,
        map['email'] as String,
        map['phonenumber'] as String,
        map['organization'] as String,
        map['club'] as String,
        map['interests'] as String,
        map['desc'] as String);
  }
  
  String toJson() => json.encode(toMap());
  
  factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source) as Map<String,dynamic>);
  @override
  String toString() => 'LoginModel(name: $name, age: $age,email:$email,phonenumber:$phonenumber,organization:$organization,club:$club,interests:$interests)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginModel &&
        other.name == name &&
        other.age == age &&
        other.email == email &&
        other.phonenumber == phonenumber &&
    other.organization == organization &&
    other.club == club &&
    other.interests == interests &&
    other.desc == desc;
  }

}