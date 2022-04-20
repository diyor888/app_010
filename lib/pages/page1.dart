import 'package:app_010/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  static const String id = "page1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
         // height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 35, color: Colors.blue),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 47,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(
                        1.0, // horizontal, move right 10
                        1.0, // vertical, move down 10
                      ),
                    ),
                  ],
                  // shape: Border.all(width: 2,color: Colors.red),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black,),
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),

                    // email oldidan icon qoyish =>
                    // prefixIcon: Icon(
                    //   Icons.mail,
                    //   color: Colors.grey,
                    // ),

                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 47,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(
                        1.0, // horizontal, move right 10
                        1.0, // vertical, move down 10
                      ),
                    ),
                  ],
                  // shape: Border.all(width: 2,color: Colors.red),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black,),
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot your',style: TextStyle(fontSize: 17),),
                  Text(' password?',style: TextStyle(fontSize: 17,color: Colors.blue),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, Page2.id);
                  },
                  child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 17),),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Sign up",style: TextStyle(fontSize: 17,color: Colors.blue),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
