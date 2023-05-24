import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  void initState() {
    // ignore: avoid_print
    print("call hogaya");
    Future.delayed(const Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/header.png",
                    fit: BoxFit.fill,
                  ))),
          const Spacer(),
          Text(
            "ANGEL SURE",
            style: GoogleFonts.akayaTelivigala(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2F80ED)),
          ),
          Image.asset(
            "assets/logo.png",
            height: 239,
            width: 298,
          ),
          const Spacer(),
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/footer.png",
                    fit: BoxFit.fill,
                  ))),
        ]),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void switchToSigninPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SigninPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/header.png", fit: BoxFit.fill))),
          const Spacer(),

          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.only(left: 700),
            child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninPage()));
                  });
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    //height: 1.5,
                  ),
                )),
          ),

          const Padding(
            padding: EdgeInsets.all(30),
            child: Text("Sign In to Continue",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                width: 40,
                height: 40,
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
                width: 35,
                height: 35,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVzzDjMBjEbwfQnmPvFKrNx5WpuPtCEP-R-MAAoNUGJA&s",
                width: 35,
                height: 35,
              ),
            ],
          ),

          Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Divider(
                    indent: 25.0,
                    endIndent: 25.0,
                    thickness: 2,
                  ),
                ),
              ),
              Text(
                "OR",
                style: TextStyle(height: 3),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Divider(
                    indent: 25.0,
                    endIndent: 25.0,
                    thickness: 2,
                  ),
                ),
              )
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(top: 10, right: 920.0),
            child: Text("Email ID*",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'xyz@gmail.com',
                labelText: "Email",
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Password*",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',

                // icon: Icon(Icons.visibility
              ),
            ),
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            // margin: const EdgeInsets.only(left: 5, right: 5),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 442),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    // ignore: avoid_print
                    print(emailController.text);
                    // ignore: avoid_print
                    print(passwordController.text);
                  });
                },
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 302, right: 302),
            child: Text("Terms and Condition | Privacy Policy"),
          ),
          const Spacer(),
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/footer.png", fit: BoxFit.fill))),
        ],
      ),
    );
  }
}

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  void switchToSigninPage() {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/header.png", fit: BoxFit.fill))),
          const Spacer(),

          //
          Container(
            margin: const EdgeInsets.only(left: 750),
            child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  });
                },
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text("New User? Get Started Now",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                width: 35,
                height: 35,
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
                width: 35,
                height: 35,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVzzDjMBjEbwfQnmPvFKrNx5WpuPtCEP-R-MAAoNUGJA&s",
                width: 35,
                height: 35,
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Divider(
                  indent: 15.0,
                  endIndent: 25.0,
                  thickness: 2,
                ),
              )),
              Text("OR"),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Divider(
                  indent: 15.0,
                  endIndent: 25.0,
                  thickness: 2,
                ),
              ))
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(right: 920.0),
            child: Text("Email ID*",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          // ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'xyz@gmail.com'),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(right: 920.0),
            child: Text("Password*",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()
                  // icon: Icon(Icons.visibility
                  ),
            ),
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            // margin: const EdgeInsets.only(left: 5, right: 5),
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 442, right: 442),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    // ignore: avoid_print
                    print("create_a_state");
                  });
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 302, right: 302),
            child: Text("Terms and Condition | Privacy Policy"),
          ),
          const Spacer(),
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/footer.png", fit: BoxFit.fill))),
        ],
      ),
    );
  }
}
