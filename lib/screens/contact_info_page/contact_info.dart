import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../global_variable/global_variable.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await imgPicker.pickImage(
      source: source,
    );

    if (xFile != null) {
      image = File(xFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8d8d8),
      appBar: AppBar(
        title: Text(
          "Contact Info",
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
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        index = 0;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border(
                            bottom: BorderSide(
                              color: index == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        index = 1;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Photo",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        index = 2;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 2
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: IndexedStack(
                index: index,
                children: [
                  // 0 => Contact
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 420.h,
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Form(
                            key: formKey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  //Name
                                  TextFormField(
                                    controller: nameController,
                                    cursorColor: Colors.black,
                                    cursorWidth: 2,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Your name is not Entered!";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onChanged: (val) {
                                      name = val!;
                                    },
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: "Enter your name",
                                      hintStyle: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 15.sp,
                                      ),
                                      labelText: "Name",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                      prefixIcon: Icon(
                                        CupertinoIcons.person,
                                        color: Colors.grey,
                                        size: 25.sp,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff35B6AC),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
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
                                  //Email
                                  TextFormField(
                                    controller: emailController,
                                    cursorColor: Colors.black,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Your Email is not Entered!"
                                        : null,
                                    onSaved: (val) {
                                      email = val!;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Enter your email",
                                      hintStyle: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 15.sp,
                                      ),
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: Colors.grey,
                                        size: 25.sp,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xff35B6AC),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
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
                                  //Address
                                  TextFormField(
                                    cursorColor: Colors.black,
                                    controller: addressController,
                                    maxLines: 2,
                                    textInputAction: TextInputAction.next,
                                    textAlign: TextAlign.start,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Your Address in not Entered!"
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        CupertinoIcons.location_solid,
                                        color: Colors.grey,
                                      ),
                                      labelText: "Address",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                      hintText: "Enter your address",
                                      hintStyle: TextStyle(
                                        color: Colors.black38,
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
                                  //Phone
                                  TextFormField(
                                    controller: phoneController,
                                    cursorColor: Colors.black,
                                    validator: (val) => (val!.isEmpty)
                                        ? "Your Phone number is not Entered!"
                                        : null,
                                    maxLength: 10,
                                    textInputAction: TextInputAction.next,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        CupertinoIcons.phone,
                                        color: Colors.grey,
                                      ),
                                      labelText: "Phone",
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                      hintText: "Enter your Phone number",
                                      hintStyle: TextStyle(
                                        color: Colors.black38,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            formKey.currentState!.save();

                                            setState(() {});
                                          }
                                        },
                                        child: const Text("Submit"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          nameController.clear();
                                          emailController.clear();
                                          addressController.clear();
                                          phoneController.clear();
                                          setState(() {});
                                        },
                                        child: const Text("Reset"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 1 => Photo
                  Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                            radius: 75.w,
                            backgroundImage: (image != null)
                                ? FileImage(image!)
                                : const NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png")
                                    as ImageProvider),
                        FloatingActionButton.small(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Select Your Photo"),
                                titleTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                ),
                                backgroundColor: Colors.blueAccent,
                                content: Row(
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () async {
                                        await pickImage(
                                          source: ImageSource.camera,
                                        ).then(
                                          (val) {
                                            Navigator.pop(context);
                                          },
                                        );
                                        setState(() {});
                                      },
                                      label: Text(
                                        "Camera",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      icon: const Icon(Icons.camera),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () async {
                                        await pickImage(
                                                source: ImageSource.gallery)
                                            .then(
                                          (val) => Navigator.pop(context),
                                        );
                                        setState(() {});
                                      },
                                      label: Text(
                                        "Gallery",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      icon: const Icon(Icons.photo),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: const Icon(
                            CupertinoIcons.add_circled,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 2 => Info
                  Container(
                    height: 310.h,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          Row(
                            children: [
                              Text(
                                "Name : ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20.sp,
                          ),
                          //email
                          Row(
                            children: [
                              Text(
                                "Email : ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                email,
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20.sp,
                          ),
                          //address
                          Row(
                            children: [
                              Text(
                                "Address : ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                address,
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20.sp,
                          ),
                          //phone
                          Row(
                            children: [
                              Text(
                                "Phone No. : ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${phone.toString()}",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
