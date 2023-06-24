import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liveasy/pages/verify_otp.dart';

class EnterNumber extends StatelessWidget {
  const EnterNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            children: [
              CloseButton(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 64, 0, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
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
                // margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    ClipRect(
                      // borderRadius: BorderRadius.circular(100),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '-',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                     SizedBox(
                      height: 50,
                      width: 150,
                      //  width: double.infinity,
                      child: TextField(
                        // autofocus: true,
                        maxLength: 10,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                        keyboardType: TextInputType.number,
                        // expands: true,
                        // obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                          // border: OutlineInputBorder(),
                          // labelText: 'Password',
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerifyOTP()));
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
              )
            ],
          ),
          // Icon(icon),
          // const Column(
          //   children: [
          // TextField(
          //   obscureText: true,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     // labelText: 'Password',
          //     hintText: 'Mobile Number',
          //   ),
          // ),
          //   ],
          // ),
        ],
      )),
    );
  }
}
