class Person {
  String name;
  String age;
  String organization;
  String club;
  String interests;
  String desc;

  Person({required this.name, required this.age,required this.organization,required this.club,
  required this.interests, required this.desc});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      organization: json['organization'],
      club: json['club'],
      interests: json['interests'],
      desc: json['desc']
    );
  }
}
