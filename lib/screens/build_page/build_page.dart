import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global_variable/global_variable.dart';
import '../../list/build_page_list.dart';
import '../../routes/routes.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({super.key});

  @override
  State<BuildPage> createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb8d8d8),
        appBar: AppBar(
          title: Text(
            "Resume Builder",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          surfaceTintColor: const Color(0xff35B6AC),
          backgroundColor: const Color(0xff35B6AC),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff35B6AC),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Options",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ...buildOptionList.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: Card(
                            child: ListTile(
                              tileColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed(e['page']);
                              },
                              leading: Image.asset(
                                e['icon'],
                                height: 30.h,
                              ),
                              title: Text(
                                e['title'],
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Visibility(
          visible:
              (image != null && name != null && phone != null && email != null),
          child: FloatingActionButton.extended(
            backgroundColor: Color(0xff35B6AC),
            onPressed: () {
              Navigator.pushNamed(context, Routes.pdf);

              // setState(() {});
            },
            label: const Row(
              children: [
                Text(
                  "PDF   ",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
