import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/screens/screen%20two.dart';

import '../main.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

String dropdownValue = 'One';

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var wide = MediaQuery.of(context).size.width;
    var high = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff898edf),
      body: FadeIn(
        duration: Duration(seconds: 3),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " بك معنا",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  " محمد ابراهيم",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "اهلا ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Center(child: Text("استكمل بياناتك")),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "تسجيل ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Divider(
              color: accentcolor,
              indent: wide / 3,
              endIndent: wide / 3,
              thickness: 2,
            ),
            SizedBox(
              height: high / 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  //  controller: LoginMail,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "كم ساعه يمكنك ان تعمل في الاسبوع",
                      suffixIcon: Icon(Icons.alarm),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscureText: true,
                  //        controller: LoginPass,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "ما عدد المتدربين الذي يمكنك متابعتهم",
                      suffixIcon: Icon(Icons.group),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "هل انت",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: maincolor),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "هل توافق علي الشروط و الاحكام",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: maincolor),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16, right: 20, left: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                color: accentcolor,
                splashColor: maincolor,
                child: Text(
                  "متابعة",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Text("لا ان يتم تفعيل حسابك يمكنك الاستمتاع بكافة المزايا ")
          ],
        ),
      ),
    );
  }
}
