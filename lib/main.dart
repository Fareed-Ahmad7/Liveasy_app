import 'package:flutter/material.dart';
import 'package:liveasy/pages/mobile_number_page.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // implement hindi language support
  // implement textfield on submit
  // remove validate button
  // add resend code button
  // change pinput ui to figma design
  //   rename pages and replace it with word screens
  // decide and add clippath design to mobile page
  // format, clean, break into widgets, break main and home page code
  // don't let the user to go to profile page if his otp is not validated.
  // don't let the user to go back screen if his otp is validated.
  // make leading listtile icon align at center, place images of wearhouse and lorry before titles.
  // increase the quality of images of lorry and wearhouse 


  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 104),
                    Image.asset(
                      'assets/images/image.png',
                    ),
                    SizedBox(height: 32),
                    const Text(
                      "Please select your Language",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    const Text(
                      "You can change the language at any time.",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 24),
                    SelectLanguage(),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  EnterNumber()));
                      },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(216, 48),
                        shape: LinearBorder(),
                        backgroundColor: Color.fromRGBO(46, 59, 98, 1),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    // fit: StackFit.passthrough,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipPath(
                          clipper: BackClipper(),
                          child: Container(
                            height: 113,
                            color: Color.fromRGBO(147, 210, 243, 1),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipPath(
                          clipper: FrontClipper(),
                          child: Container(
                            height: 113,
                            color: Color.fromRGBO(46, 59, 98, .5),
                          ),
                        ),
                      ),
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

class FrontClipper extends CustomClipper<Path> {
  // @override
  // Path getClip(Size size) {
  //   Path path = Path();
  //   final double _xScaling = size.width / 430;
  //   final double _yScaling = size.height / 446;
  //   path.lineTo(0 * _xScaling, 357.894 * _yScaling);
  //   path.cubicTo(
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //     11.825 * _xScaling,
  //     367.904 * _yScaling,
  //     11.825 * _xScaling,
  //     367.904 * _yScaling,
  //   );
  //   path.cubicTo(
  //     23.65 * _xScaling,
  //     377.913 * _yScaling,
  //     47.3 * _xScaling,
  //     397.933 * _yScaling,
  //     72.025 * _xScaling,
  //     403.939 * _yScaling,
  //   );
  //   path.cubicTo(
  //     95.675 * _xScaling,
  //     409.945 * _yScaling,
  //     119.325 * _xScaling,
  //     401.937 * _yScaling,
  //     142.975 * _xScaling,
  //     391.927 * _yScaling,
  //   );
  //   path.cubicTo(
  //     167.7 * _xScaling,
  //     381.917 * _yScaling,
  //     191.35 * _xScaling,
  //     369.906 * _yScaling,
  //     215 * _xScaling,
  //     361.898 * _yScaling,
  //   );
  //   path.cubicTo(
  //     238.65 * _xScaling,
  //     353.89 * _yScaling,
  //     262.3 * _xScaling,
  //     349.886 * _yScaling,
  //     287.025 * _xScaling,
  //     355.892 * _yScaling,
  //   );
  //   path.cubicTo(
  //     310.675 * _xScaling,
  //     361.898 * _yScaling,
  //     334.325 * _xScaling,
  //     377.913 * _yScaling,
  //     357.975 * _xScaling,
  //     381.917 * _yScaling,
  //   );
  //   path.cubicTo(
  //     382.7 * _xScaling,
  //     385.921 * _yScaling,
  //     406.35 * _xScaling,
  //     377.913 * _yScaling,
  //     418.175 * _xScaling,
  //     373.909 * _yScaling,
  //   );
  //   path.cubicTo(
  //     418.175 * _xScaling,
  //     373.909 * _yScaling,
  //     430 * _xScaling,
  //     369.906 * _yScaling,
  //     430 * _xScaling,
  //     369.906 * _yScaling,
  //   );
  //   path.cubicTo(
  //     430 * _xScaling,
  //     369.906 * _yScaling,
  //     430 * _xScaling,
  //     466 * _yScaling,
  //     430 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     430 * _xScaling,
  //     466 * _yScaling,
  //     418.175 * _xScaling,
  //     466 * _yScaling,
  //     418.175 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     406.35 * _xScaling,
  //     466 * _yScaling,
  //     382.7 * _xScaling,
  //     466 * _yScaling,
  //     357.975 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     334.325 * _xScaling,
  //     466 * _yScaling,
  //     310.675 * _xScaling,
  //     466 * _yScaling,
  //     287.025 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     262.3 * _xScaling,
  //     466 * _yScaling,
  //     238.65 * _xScaling,
  //     466 * _yScaling,
  //     215 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     191.35 * _xScaling,
  //     466 * _yScaling,
  //     167.7 * _xScaling,
  //     466 * _yScaling,
  //     142.975 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     119.325 * _xScaling,
  //     466 * _yScaling,
  //     95.675 * _xScaling,
  //     466 * _yScaling,
  //     72.025 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     47.3 * _xScaling,
  //     466 * _yScaling,
  //     23.65 * _xScaling,
  //     466 * _yScaling,
  //     11.825 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     11.825 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     0 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //   );
  //   path.cubicTo(
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //     0 * _xScaling,
  //     357.894 * _yScaling,
  //   );
  //   return path;
  // }
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 430;
    final double _yScaling = size.height / 113;
    path.lineTo(0 * _xScaling, 4.8937 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      4.8937 * _yScaling,
      11.825 * _xScaling,
      14.9035 * _yScaling,
      11.825 * _xScaling,
      14.9035 * _yScaling,
    );
    path.cubicTo(
      23.65 * _xScaling,
      24.9134 * _yScaling,
      47.3 * _xScaling,
      44.9331 * _yScaling,
      72.025 * _xScaling,
      50.939 * _yScaling,
    );
    path.cubicTo(
      95.675 * _xScaling,
      56.9449 * _yScaling,
      119.325 * _xScaling,
      48.937 * _yScaling,
      142.975 * _xScaling,
      38.9272 * _yScaling,
    );
    path.cubicTo(
      167.7 * _xScaling,
      28.9173 * _yScaling,
      191.35 * _xScaling,
      16.9055 * _yScaling,
      215 * _xScaling,
      8.89764 * _yScaling,
    );
    path.cubicTo(
      238.65 * _xScaling,
      0.889764 * _yScaling,
      262.3 * _xScaling,
      -3.11417 * _yScaling,
      287.025 * _xScaling,
      2.89173 * _yScaling,
    );
    path.cubicTo(
      310.675 * _xScaling,
      8.89764 * _yScaling,
      334.325 * _xScaling,
      24.9134 * _yScaling,
      357.975 * _xScaling,
      28.9173 * _yScaling,
    );
    path.cubicTo(
      382.7 * _xScaling,
      32.9213 * _yScaling,
      406.35 * _xScaling,
      24.9134 * _yScaling,
      418.175 * _xScaling,
      20.9095 * _yScaling,
    );
    path.cubicTo(
      418.175 * _xScaling,
      20.9095 * _yScaling,
      430 * _xScaling,
      16.9055 * _yScaling,
      430 * _xScaling,
      16.9055 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      16.9055 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      113 * _yScaling,
      418.175 * _xScaling,
      113 * _yScaling,
      418.175 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      406.35 * _xScaling,
      113 * _yScaling,
      382.7 * _xScaling,
      113 * _yScaling,
      357.975 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      334.325 * _xScaling,
      113 * _yScaling,
      310.675 * _xScaling,
      113 * _yScaling,
      287.025 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      262.3 * _xScaling,
      113 * _yScaling,
      238.65 * _xScaling,
      113 * _yScaling,
      215 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      191.35 * _xScaling,
      113 * _yScaling,
      167.7 * _xScaling,
      113 * _yScaling,
      142.975 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      119.325 * _xScaling,
      113 * _yScaling,
      95.675 * _xScaling,
      113 * _yScaling,
      72.025 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      47.3 * _xScaling,
      113 * _yScaling,
      23.65 * _xScaling,
      113 * _yScaling,
      11.825 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      11.825 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
      0 * _xScaling,
      4.8937 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BackClipper extends CustomClipper<Path> {
  // @override
  // Path getClip(Size size) {
  //   Path path = Path();
  //   final double _xScaling = size.width / 430;
  //   final double _yScaling = size.height / 446;
  //   path.lineTo(0 * _xScaling, 373.543 * _yScaling);
  //   path.cubicTo(
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //     17.9167 * _xScaling,
  //     366.939 * _yScaling,
  //     17.9167 * _xScaling,
  //     366.939 * _yScaling,
  //   );
  //   path.cubicTo(
  //     35.8333 * _xScaling,
  //     360.335 * _yScaling,
  //     71.6667 * _xScaling,
  //     347.127 * _yScaling,
  //     107.5 * _xScaling,
  //     355.932 * _yScaling,
  //   );
  //   path.cubicTo(
  //     143.333 * _xScaling,
  //     364.738 * _yScaling,
  //     179.167 * _xScaling,
  //     395.557 * _yScaling,
  //     215 * _xScaling,
  //     413.167 * _yScaling,
  //   );
  //   path.cubicTo(
  //     250.833 * _xScaling,
  //     430.778 * _yScaling,
  //     286.667 * _xScaling,
  //     435.181 * _yScaling,
  //     322.5 * _xScaling,
  //     424.174 * _yScaling,
  //   );
  //   path.cubicTo(
  //     358.333 * _xScaling,
  //     413.167 * _yScaling,
  //     394.167 * _xScaling,
  //     386.751 * _yScaling,
  //     412.083 * _xScaling,
  //     373.543 * _yScaling,
  //   );
  //   path.cubicTo(
  //     412.083 * _xScaling,
  //     373.543 * _yScaling,
  //     430 * _xScaling,
  //     360.335 * _yScaling,
  //     430 * _xScaling,
  //     360.335 * _yScaling,
  //   );
  //   path.cubicTo(
  //     430 * _xScaling,
  //     360.335 * _yScaling,
  //     430 * _xScaling,
  //     466 * _yScaling,
  //     430 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     430 * _xScaling,
  //     466 * _yScaling,
  //     412.083 * _xScaling,
  //     466 * _yScaling,
  //     412.083 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     394.167 * _xScaling,
  //     466 * _yScaling,
  //     358.333 * _xScaling,
  //     466 * _yScaling,
  //     322.5 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     286.667 * _xScaling,
  //     466 * _yScaling,
  //     250.833 * _xScaling,
  //     466 * _yScaling,
  //     215 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     179.167 * _xScaling,
  //     466 * _yScaling,
  //     143.333 * _xScaling,
  //     466 * _yScaling,
  //     107.5 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     71.6667 * _xScaling,
  //     466 * _yScaling,
  //     35.8333 * _xScaling,
  //     466 * _yScaling,
  //     17.9167 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     17.9167 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     466 * _yScaling,
  //   );
  //   path.cubicTo(
  //     0 * _xScaling,
  //     466 * _yScaling,
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //   );
  //   path.cubicTo(
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //     0 * _xScaling,
  //     373.543 * _yScaling,
  //   );
  //   return path;
  // }
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 430;
    final double _yScaling = size.height / 113;
    path.lineTo(0 * _xScaling, 20.543 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      20.543 * _yScaling,
      17.9167 * _xScaling,
      13.939 * _yScaling,
      17.9167 * _xScaling,
      13.939 * _yScaling,
    );
    path.cubicTo(
      35.8333 * _xScaling,
      7.33491 * _yScaling,
      71.6667 * _xScaling,
      -5.87322 * _yScaling,
      107.5 * _xScaling,
      2.9322 * _yScaling,
    );
    path.cubicTo(
      143.333 * _xScaling,
      11.7376 * _yScaling,
      179.167 * _xScaling,
      42.5566 * _yScaling,
      215 * _xScaling,
      60.1675 * _yScaling,
    );
    path.cubicTo(
      250.833 * _xScaling,
      77.7783 * _yScaling,
      286.667 * _xScaling,
      82.181 * _yScaling,
      322.5 * _xScaling,
      71.1742 * _yScaling,
    );
    path.cubicTo(
      358.333 * _xScaling,
      60.1675 * _yScaling,
      394.167 * _xScaling,
      33.7512 * _yScaling,
      412.083 * _xScaling,
      20.543 * _yScaling,
    );
    path.cubicTo(
      412.083 * _xScaling,
      20.543 * _yScaling,
      430 * _xScaling,
      7.33491 * _yScaling,
      430 * _xScaling,
      7.33491 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      7.33491 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
      430 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      113 * _yScaling,
      412.083 * _xScaling,
      113 * _yScaling,
      412.083 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      394.167 * _xScaling,
      113 * _yScaling,
      358.333 * _xScaling,
      113 * _yScaling,
      322.5 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      286.667 * _xScaling,
      113 * _yScaling,
      250.833 * _xScaling,
      113 * _yScaling,
      215 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      179.167 * _xScaling,
      113 * _yScaling,
      143.333 * _xScaling,
      113 * _yScaling,
      107.5 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      71.6667 * _xScaling,
      113 * _yScaling,
      35.8333 * _xScaling,
      113 * _yScaling,
      17.9167 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      17.9167 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      113 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      113 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
      0 * _xScaling,
      20.543 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({
    super.key,
  });

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

const List<String> list = <String>['English', 'Hindi'];

class _SelectLanguageState extends State<SelectLanguage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all()),
      width: 216,
      height: 48,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          // alignment: Alignment.topRight,
          // underline: false,
          //  style: ,
          // padding: EdgeInsets.all(),
          value: dropdownValue,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
