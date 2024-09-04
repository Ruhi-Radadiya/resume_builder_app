import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global_variable/global_variable.dart';

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({super.key});

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      appBar: AppBar(
        title: Text(
          "Personal Detail Page",
          style: TextStyle(
            fontSize: 25.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff35B6AC),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff35B6AC),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 570.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff35B6AC),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "DD/MM/YYYY",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                                fontSize: 15.sp,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Color(0xff35B6AC),
                                  width: 2,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.redAccent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.redAccent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Marital Status",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff35B6AC),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: "Single",
                                    groupValue: maritalStatus,
                                    activeColor: Color(0xff35B6AC),
                                    onChanged: (val) {
                                      maritalStatus = val!;
                                      setState(() {});
                                    },
                                  ),
                                  Text(
                                    "Single",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "Married",
                                    groupValue: maritalStatus,
                                    activeColor: Color(0xff35B6AC),
                                    onChanged: (val) {
                                      maritalStatus = val!;
                                      setState(() {});
                                    },
                                  ),
                                  Text(
                                    "Married",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff35B6AC),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: "Male",
                                    groupValue: gender,
                                    activeColor: Color(0xff35B6AC),
                                    onChanged: (val) {
                                      gender = val!;
                                      setState(() {});
                                    },
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "Female",
                                    groupValue: gender,
                                    activeColor: Color(0xff35B6AC),
                                    onChanged: (val) {
                                      gender = val!;
                                      setState(() {});
                                    },
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Languages Known",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff35B6AC),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: gujarati,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  gujarati = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Gujarati",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: english,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  english = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: hindi,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  hindi = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Hindi",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff35B6AC),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          TextFormField(
                            cursorColor: Colors.black,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Indian",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                                fontSize: 15.sp,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: const BorderSide(
                                  color: Color(0xff35B6AC),
                                  width: 2,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.redAccent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.redAccent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
