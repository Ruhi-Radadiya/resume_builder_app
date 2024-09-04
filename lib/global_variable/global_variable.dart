import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// contact info

String name = "";
String email = "";
String address = "";
int phone = 0;
String password = "";
File? image;
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController phoneController = TextEditingController();
ImagePicker imgPicker = ImagePicker();
int index = 0;
bool isPassword = true;

//personal detail

String maritalStatus = "";
String gender = "";
bool english = false;
bool hindi = false;
bool gujarati = false;

//experience

String status = "";

//technical skill

List technicalSkillList = [
  "",
  "",
];
List<TextEditingController> technicalSkillController = [
  TextEditingController(),
  TextEditingController(),
];

// hobbies
List<String> hobbiesList = [
  "",
];
List<TextEditingController> hobbiesController = [
  TextEditingController(),
  TextEditingController(),
];

// projects
bool c = false;
bool cpp = false;
bool flutter = false;

// achievement
List<String> achievementList = [
  "",
  "",
];
List<TextEditingController> achievementController = [
  TextEditingController(),
  TextEditingController(),
];

// declaration
String declaration = "";
String date = "";
String place = "";
