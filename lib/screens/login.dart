import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liveasy/screens/otp.dart';
import 'package:liveasy/utils/waves.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Row(
                    children: [
                      CloseButton(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 64, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.loginTitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          AppLocalizations.of(context)!.loginSubTitle,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 328,
                        height: 48,
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Row(
                          children: [
                            ClipRect(
                              child: Image.asset(
                                height: 32,
                                width: 32,
                                'assets/images/indian_flag.png',
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text(
                              '+91',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            SizedBox(
                              height: 50,
                              width: 150,
                              child: TextField(
                                controller: myController,
                                maxLength: 10,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          debugPrint('verifying..');
                          await auth.verifyPhoneNumber(
                            phoneNumber: "+91${myController.text}",
                            timeout: const Duration(seconds: 60),
                            verificationCompleted:
                                (PhoneAuthCredential credential) async {
                              debugPrint('phone number is valid');
                            },
                            verificationFailed: (FirebaseAuthException e) {
                              debugPrint(e.message);
                              if (e.code == 'invalid-phone-number') {
                                debugPrint(
                                    'The provided phone number is not valid.');
                              }
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text("Invalid Number"),
                                  content: const Text("Please enter a valid number"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Try Again'),
                                      child: const Text('Try Again'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            codeSent: (String verificationId,
                                int? resendToken) async {
                              debugPrint("code sent");
                              debugPrint("verification id : $verificationId");
                              debugPrint("opening otp screen");

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VerifyOTPScreen(
                                    verificationId: verificationId,
                                    userMobileNumber: myController.text,
                                  ),
                                ),
                              );
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {
                              debugPrint('codeAutoRetrievalTimeout');
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(328, 56),
                          shape: const LinearBorder(),
                          backgroundColor: const Color.fromRGBO(46, 59, 98, 1),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.loginButton,
                          style: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: LoginBackClipper(),
                      child: Container(
                        height: 172,
                        color: const Color.fromRGBO(70, 166, 221, 1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: LoginFrontClipper(),
                      child: Container(
                        height: 152.89,
                        color: const Color.fromRGBO(14, 102, 175, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
