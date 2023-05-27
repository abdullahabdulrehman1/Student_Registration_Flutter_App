class StudentModel {
  final Name;
  final Email;
  final Addresss;
  final id;
  StudentModel({this.Name, this.Addresss, this.Email, this.id});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
        Name: json['Name'],
        Addresss: json['Address'],
        Email: json['Email'],
        id: json['id']);
  }
}
