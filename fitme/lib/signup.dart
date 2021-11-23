import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitme/main.dart';
class SignUp extends StatelessWidget{
  Widget makeInput({label, obsureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.grey.shade400,
              ),
            ),
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'FitMe',
            style: TextStyle(
              fontFamily: 'RedRose',
            ),
          ),
        ),
        backgroundColor: Color(0xff068D9D),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Welcome, User!',
              style: TextStyle(
                fontFamily: 'Sansita',
                fontSize: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'SIGNUP',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 23,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  makeInput(label: "Email"),
                  makeInput(label: "Password", obsureText: true),
                  makeInput(label: "Confirm Pasword", obsureText: true)
                ],
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 40,
              onPressed: () {},
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),

                Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => NewHomePage()));
                      },

                      child : Text(" Login!",
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }

}