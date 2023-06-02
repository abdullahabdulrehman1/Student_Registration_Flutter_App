class StudentModel {
  final String Name;
  final String Email;
  final String Addresss;
  final int id;

  StudentModel({required this.Name, required this.Addresss, required this.Email, required this.id});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      Name: json['Name'],
      Addresss: json['Address'],
      Email: json['Email'],
      id: json['id'],
    );
  }
}
