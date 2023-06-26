// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/screens/login.dart';
import 'package:liveasy/screens/profile.dart';
import 'package:pinput/pinput.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen(
      {super.key,
      required this.verificationId,
      required this.userMobileNumber});
  final String verificationId;
  final String userMobileNumber;

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const myPinTheme = PinTheme(
      width: 48,
      height: 48,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(147, 210, 243, 1),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                BackButton(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 64, 0, 0),
              child: Column(
                children: [
                  const Text(
                    "Verify Phone",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Code is sent to ${widget.userMobileNumber}",
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 24),
                  FractionallySizedBox(
                      widthFactor: 1,
                      child: Pinput(
                        length: 6,
                        controller: pinController,
                        focusNode: focusNode,
                        defaultPinTheme: myPinTheme,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                      )),
                  // const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn’t receive the code?",
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Request Again",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  // const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      debugPrint("signin with credentials");
                      debugPrint("verificationId: ");
                      debugPrint(widget.verificationId);
                      debugPrint("smscode: ");
                      debugPrint(pinController.text);

                      // Create a PhoneAuthCredential with the code
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: widget.verificationId,
                              smsCode: pinController.text);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential).then(
                        (UserCredential result) {
                          debugPrint("credentials: $credential");
                          debugPrint("credential result: $result");
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()),
                              (Route<dynamic> route) => false);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(328, 56),
                      shape: const LinearBorder(),
                      backgroundColor: const Color.fromRGBO(46, 59, 98, 1),
                    ),
                    child: const Text(
                      "VERIFY AND CONTINUE",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
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
