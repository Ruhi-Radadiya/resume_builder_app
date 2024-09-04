import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global_variable/global_variable.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({super.key});

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  bool index = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffb8d8d8),
        appBar: AppBar(
          title: Text(
            "Declaration Page",
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
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 400.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Declaration",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color(0xff35B6AC),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Switch(
                                  activeColor: Color(0xff35B6AC),
                                  value: index,
                                  onChanged: (val) {
                                    index = val;
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                            Visibility(
                              visible: index,
                              child: Column(
                                children: [
                                  TextFormField(
                                    maxLines: 3,
                                    cursorColor: Colors.black,
                                    textInputAction: TextInputAction.next,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      hintText: "Declaration",
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
                                  Row(
                                    children: [
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Color(0xff35B6AC),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
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
                                  Row(
                                    children: [
                                      Text(
                                        "Place/City",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Color(0xff35B6AC),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  TextFormField(
                                    cursorColor: Colors.black,
                                    textInputAction: TextInputAction.next,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      hintText: "Surat",
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
