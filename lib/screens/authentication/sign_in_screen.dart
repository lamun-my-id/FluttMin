import 'package:flutter/material.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double width = context.width();
    return WrapperComponent(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            // horizontal: context.margin(),
            horizontal: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "#");
                          },
                          child: const Text("Dashboard"),
                        ),
                        const Text(" / "),
                        const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                constraints: const BoxConstraints(minHeight: 360),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 1),
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 760,
                        width: 620,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 32,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.grey[400]!,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/logo.png"),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  "FlutterAdmin",
                                  style: TextStyle(
                                    // color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit suspendisse.",
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 760,
                        width: 620,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 32,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.grey[400]!,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Start for free",
                              style: TextStyle(
                                color: Colors.grey[400]!,
                              ),
                            ),
                            const Text(
                              "Sign In to FlutterAdmin",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            const SizedBox(
                              height: 40,
                              child: Text("Email"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.grey[400]!,
                                    width: 0.0,
                                  ),
                                ),
                                hintText: "Enter your email",
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SizedBox(
                              height: 40,
                              child: Text("Password"),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.grey[400]!,
                                    width: 0.0,
                                  ),
                                ),
                                hintText: "Enter your password",
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: width,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: width,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[50],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Sign in with Google",
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have any account? "),
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
