import 'dart:convert';

import 'package:student_registration/models/student_model.dart';

class StudentControllers {
  //create soem method like
  //get data
  List<StudentModel> studentsFromJson(String, jsonstring) {
    final data = json.decode(jsonstring);
    return List<StudentModel>.from(
        data.map((item) => StudentModel.fromJson(item)));
  }
  //set data
  //update data
}
