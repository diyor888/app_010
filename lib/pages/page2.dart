import 'package:app_010/pages/page1.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const String id = "second_page";

  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late String email, password;

  final _formKey = GlobalKey<FormState>();

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Saved");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "CREATE NEW ACCOUNT",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '@username',
                ),
                validator: (input) => input!.length < 5
                    ? "your name must be no less than 5 characters"
                    : null,
                onSaved: (input) => email = input!,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (input) =>
                    !input!.contains('@') ? "Please enter a valid email" : null,
                onSaved: (input) => password = input!,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: (input) => input!.length < 8
                    ? "your password must be at least 8 characters long"
                    : null,
                onSaved: (input) => password = input!,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Re-Type Password',
                ),
                validator: (input) => input!.length < 8
                    ? "your password must be at least 8 characters long"
                    : null,
                onSaved: (input) => password = input!,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text("I agree with "),
                Text(
                  "Terms ",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("and "),
                Text(
                  "Privacy",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: FlatButton(
                onPressed: _doSignIn,
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Log in",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Page1.id);
                },
                child: Text(
                  " <= Orqaga",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
