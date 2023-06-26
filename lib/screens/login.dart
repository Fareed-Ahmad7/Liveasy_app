import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liveasy/screens/otp.dart';
// import 'package:liveasy/screens/profile.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                CloseButton(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 64, 0, 0),
              child: Column(
                children: [
                  Text(
                    "Please enter your mobile number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "You will receive a 4 digit code to verify next.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
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
                          debugPrint('The provided phone number is not valid.');
                        }

                      },
                      codeSent:
                          (String verificationId, int? resendToken) async {
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
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
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
    );
  }
}
