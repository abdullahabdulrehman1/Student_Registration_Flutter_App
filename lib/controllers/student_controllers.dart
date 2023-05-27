import 'dart:convert';
// import 'package:file_picker/file_picker.dart';  
// import 'dart:html';

import 'package:http/http.dart'as http;
import 'package:student_registration/models/student_model.dart';

class StudentControllers {
  //create soem method like
  //get data
  List<StudentModel> studentsFromJson(String jsonstring) {
    final data = json.decode(jsonstring);
    return List<StudentModel>.from(
        data.map((item) => StudentModel.fromJson(item)));
  }
  //set data
  Future<List<StudentModel>>getStudents() async{
    String viewIp = "192.168.1.33";
    final response = await http.get(Uri.parse(viewIp));
    if(response.statusCode == 200){
      List<StudentModel>list = studentsFromJson(response.body);
      return list;

    }else{
      return<StudentModel>[] ;
    }
 
  }
  //update data
}
