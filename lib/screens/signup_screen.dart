import 'package:flutter/material.dart';
import 'package:furniture_app/screens/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset("assets/assets/images/account.png",width: MediaQuery.of(context).size.width/2),//fit: BoxFit.contain,),
              SizedBox(height: 20,),
              Text("Create Your Account",style: TextStyle(fontSize: 25,letterSpacing: 1,fontWeight: FontWeight.bold),),
              SizedBox(height: 30),
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
                      hintText: "Name",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
                          Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
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
                  Text("Already have account ?",style: TextStyle(fontSize: 18,color: Colors.black)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.w500),)),
                ],
              ),
              //SizedBox(height: 20,),
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
