import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_slides/Screens/portfolio.dart';

import '../menu.dart';
import '../utils/gender.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 4,
                          offset: Offset(-3, 3),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Menu(),
                            ));
                      },
                      child: Icon(Icons.arrow_back_sharp),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Personal',
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'First Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(14),
                  filled: false,
                  //
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Enter your First Name",
                  hintStyle: TextStyle(fontSize: 15),
                ),
                cursorColor: Colors.black,
                cursorHeight: 22,
                cursorWidth: 1.8,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Last Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(14),
                  filled: false,
                  //
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Enter your Last Name",
                  hintStyle: TextStyle(fontSize: 15),
                ),
                cursorColor: Colors.black,
                cursorHeight: 22,
                cursorWidth: 1.8,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(14),
                    filled: false,
                    //
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(fontSize: 15)),
                cursorColor: Colors.black,
                cursorHeight: 22,
                cursorWidth: 1.8,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contact Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(14),
                    filled: false,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Enter your Contact number",
                    hintStyle: TextStyle(fontSize: 15)),
                cursorColor: Colors.black,
                cursorHeight: 22,
                cursorWidth: 1.8,
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Date Of Birth',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 7,
            ),
            Container(
                padding: const EdgeInsets.only(left: 24.0, right: 200),
                child: TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      size: 23,
                    ),
                    contentPadding: EdgeInsets.all(14),
                    hintText: "DD/MM/YYYY",
                    hintStyle: TextStyle(fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('dd-MM-yyyy').format(pickedDate);
                      setState(() {
                        dateinput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 210),
              child: GenderDropDown(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Instagram:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.black,
                        ))),
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Social Media Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFAD2F3B),
                      radius: 15,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 22),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PortFolio(),
                      ));
                },
                child: Container(
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFAD2F3B),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8),
                    )))),
          ]),
        ),
      ),
    );
  }
}
