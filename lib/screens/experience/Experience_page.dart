import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumw_builder/global_variable/global_variable.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      appBar: AppBar(
        title: Text(
          "Experience Page",
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
                      height: 600.h,
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
                            "Company Name",
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
                              hintText: "New Enterprise",
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
                            "Duration",
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
                              hintText: "2019-2020",
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
                            "Roles (Optional)",
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
                              hintText:
                                  "Working with team members to come up with new concepts and product analysis...",
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
                            "Employed status",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "Previously employed",
                                groupValue: status,
                                activeColor: Color(0xff35B6AC),
                                onChanged: (val) {
                                  status = val!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Previously employed",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "Currently employed",
                                groupValue: status,
                                activeColor: Color(0xff35B6AC),
                                onChanged: (val) {
                                  status = val!;
                                  setState(() {});
                                },
                              ),
                              Text(
                                "Currently employed",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Text(
                            "Date of Joining",
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
