import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resumw_builder/global_variable/global_variable.dart';

class HobbiesPage extends StatefulWidget {
  const HobbiesPage({super.key});

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Hobbies Page",
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
                      height: 1000.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            "Enter your Hobbies",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          ...List.generate(
                            hobbiesList.length,
                            (index) => Hobbies(
                              index: index,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              hobbiesList.add(" ");
                              hobbiesController.add(TextEditingController());
                              setState(() {});
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Color(0xff35B6AC),
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          ...hobbiesList.map(
                            (e) => Text(e),
                          ),
                          ...hobbiesController.map(
                            (e) => Text(e.text),
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

  Widget Hobbies({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: hobbiesController[index],
              onChanged: (val) {
                hobbiesList[index] = val;
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: "Communication",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    color: Color(0xff35B6AC),
                    width: 2.w,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              hobbiesList.removeAt(index);
              hobbiesController.removeAt(index);
              setState(() {});
            },
            icon: Icon(
              CupertinoIcons.delete,
              size: 25.h,
              color: Colors.red.shade300,
            ),
          ),
        ],
      ),
    );
  }
}
