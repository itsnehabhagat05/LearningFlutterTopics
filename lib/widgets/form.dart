import 'dart:math';

import 'package:flutter/material.dart';

class FormWidget  extends StatefulWidget {
  const FormWidget ({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();
  //==========================FUNCTIONS==========================
  trysubmit(){
    final isvalid = _formkey.currentState!.validate();
    if(isvalid){
      _formkey.currentState!.save();
      submitform();
    }else{
      print('Error');
    }
  }
  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 47, 95, 146),
        title: Text('Form'),
      ),
      body: Center(
        child:Container(
          margin: EdgeInsets.all(10) ,
          child: Form(
            key: _formkey,
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter firstname'
                ),
                key: ValueKey('firstname'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'Firstname should not be empty';
                  }else{
                    return null;
                  }
                },
                onSaved: (value){
                  firstname = value.toString();
                }, 
              ),


              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter lastname'
                ),
                key: ValueKey('lastname'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'Lastname should not be empty';
                  }else{
                    return null;
                  }
                },
                onSaved: (value){
                  lastname = value.toString();
                }, 
              ),


              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter email'
                ),
                key: ValueKey('email'),
                validator: (value) {
                  if(value.toString().isEmpty){
                    return 'Email should not be empty';
                  }else{
                    return null;
                  }
                },
                onSaved: (value){
                  email = value.toString();
                }, 
              ),


              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password'
                ),
                key: ValueKey('password'),
                validator: (value) {
                  if(value.toString().length<=5){
                    return 'Minimum length of Password should be 6';
                  }else{
                    return null;
                  }
                },
                onSaved: (value){
                  password = value.toString();
                }, 
              ),
              TextButton(onPressed: () {
                trysubmit();
              }, child: Text('Submit'))
            ],)),
        ) ,
      ),
    );
  }
}