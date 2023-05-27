import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:student_registration/controllers/student_controllers.dart';
import 'package:student_registration/models/student_model.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  List<StudentModel> studentlist = [];
  StreamController _streamController = StreamController();
  Future getAllStudents() async{
    studentlist = await StudentControllers().getStudents();
    _streamController.sink.add(studentlist);


  }
  
   @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {getAllStudents(); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students Registration"), ),
      body: SafeArea(child: StreamBuilder(stream: _streamController.stream, builder:(context, snapshot) {
       if(snapshot.hasData){
        return  ListView.builder(itemBuilder:((context, index) {
          StudentModel student = studentlist[index];
          return ListTile(title: Text(student.Name),subtitle: Text(student.Email),);}));


       }
       return Center(child: CircularProgressIndicator(),) ;
      },)),
    );
  }
}