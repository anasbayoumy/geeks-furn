import 'package:course3/view/screen/auth/signup.dart';
import 'package:course3/view/screen/inapp/home.dart';
import 'package:course3/view/widget/auth/custombutton.dart';
import 'package:course3/view/widget/auth/customtextform.dart';
import 'package:flutter/material.dart';

class LoginPageStateful extends StatefulWidget {
  const LoginPageStateful({super.key});

  @override
  _LoginPageStatefulState createState() => _LoginPageStatefulState();
}

class _LoginPageStatefulState extends State<LoginPageStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.2,
                image: AssetImage(
                  "assets/images/bg.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text("Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: Image.asset(
                        'assets/images/Login.png',
                      ),
                    ),
                    const Customtextform(
                        labeltext: "Enter your Email",
                        prefixIcon: Icon(Icons.email)),
                    const SizedBox(height: 20),
                    const PasswordField(labeltext: "Enter Your Password"),
                    // const Customtextform(
                    //     labeltext: "Enter Your Password",
                    //     prefixIcon: Icon(Icons.lock)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Color(0xFF3883A9)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Custombutton(
                      label: "Login",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text("Or connect with"),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                                "assets/images/icons8-facebook-50.png"),
                          ),
                        ),
                        const Text("  |  "),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                                "assets/images/icons8-google-50.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignupPageStateful(),
                            ));
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => SignupPageStateful()));
                          },
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Color(0xFF3883A9)),
                          ),
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
    );
  }
}
