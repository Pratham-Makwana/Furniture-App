import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 15),
              Image.asset("assets/assets/images/shopping.png"),
              SizedBox(height: 30),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(left: 20,right: 15),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey,width: 1.25),
                  color: Color(0xFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE7EEF8),
                      blurRadius: 1.0,
                      offset: Offset(2.6,2.6),
                    )
                  ]
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.mail),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(left: 20,right: 15),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey,width: 1.25),
                    color: Color(0xFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFE7EEF8),
                        blurRadius: 1.0,
                        offset: Offset(2.6,2.6),
                      )
                    ]
                ),
                child: Center(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 55,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFE7EEF8),
                              blurRadius: 1.0,
                              offset: Offset(2.6,2.6),
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                          SizedBox(width: 8),
                          Icon(
                            Icons.login_outlined,
                            color: Colors.white,
                            // size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account ?",style: TextStyle(fontSize: 18,color: Colors.black)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  }, child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w500),)),
                ],
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/assets/images/google_icon.png",),
                      SizedBox(width: 5),
                      Text("Sign In with Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500  ,fontSize: 18),)
                    ],
                
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
