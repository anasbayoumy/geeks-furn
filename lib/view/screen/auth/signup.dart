import 'package:course3/view/screen/auth/login.dart';
import 'package:course3/view/widget/auth/custombutton.dart';
import 'package:course3/view/widget/auth/customtextform.dart';
import 'package:flutter/material.dart';

class SignupPageStateful extends StatefulWidget {
  const SignupPageStateful({Key? key}) : super(key: key);

  @override
  _SignupPageStatefulState createState() => _SignupPageStatefulState();
}

class _SignupPageStatefulState extends State<SignupPageStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage(
              "assets/images/bg.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(50),
                  child: Image.asset("assets/images/signup.png")),
              const Customtextform(
                  labeltext: "Enter your fullname",
                  prefixIcon: Icon(Icons.person)),
              const SizedBox(height: 20),
              const Customtextform(
                  labeltext: "Enter your Email", prefixIcon: Icon(Icons.email)),
              const SizedBox(height: 20),
              const PasswordField(labeltext: "Enter your password"),
              // const Customtextform(
              //     labeltext: "Enter your password",
              //     prefixIcon: Icon(Icons.lock)),
              const SizedBox(height: 20),
              const PasswordField(
                labeltext: "Re-Enter your password",
              ),
              // const Customtextform(
              //     labeltext: "Re-Enter your password",
              //     prefixIcon: Icon(Icons.lock)),
              const SizedBox(height: 30),
              Custombutton(
                  label: "Create Account",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPageStateful()));
                  }),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Or connect with"),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child:
                          Image.asset("assets/images/icons8-facebook-50.png"),
                    ),
                  ),
                  const Text("  |  "),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset("assets/images/icons8-google-50.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPageStateful()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color(0xFF3883A9)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
