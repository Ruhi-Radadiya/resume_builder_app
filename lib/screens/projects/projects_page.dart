import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumw_builder/global_variable/global_variable.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      appBar: AppBar(
        title: Text(
          "Projects Page",
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
                      height: 560.h,
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
                            "Project Title",
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
                              hintText: "Resume Builder App",
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
                            "Technologies",
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
                                value: c,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  c = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "C",
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
                                value: cpp,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  cpp = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "C++",
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
                                value: flutter,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                activeColor: Color(0xff35B6AC),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                onChanged: (value) {
                                  flutter = value!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Flutter",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Roles",
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
                              hintText: "Code Analyzer",
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
                            "Project Definition",
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
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: "Enter Project Description",
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
