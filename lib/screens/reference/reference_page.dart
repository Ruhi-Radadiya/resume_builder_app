import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferencePage extends StatefulWidget {
  const ReferencePage({super.key});

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      appBar: AppBar(
        title: Text(
          "Reference Page",
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
                      height: 330.h,
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
                            "Reference name",
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
                              hintText: "Suresh shah",
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
                            "Designation",
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
                              hintText: "Marketing manager , ID-342567",
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
                            "Organization/Institute",
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
                              hintText: "Green Energy pvt. ltd.",
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
