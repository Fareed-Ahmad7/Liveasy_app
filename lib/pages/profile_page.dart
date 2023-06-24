import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List profileType = ['Shipper', 'Transpoter'];
    List profileDescription = ['Lorem ipsum dolor ', 'Lorem ipsum sit '];
    List profileIcon = ['assets/images/shipper.png', 'assets/images/transpoter.png'];

    return  Scaffold(
      // appBar: AppBar(),
      body: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 112, 0, 0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Please select your profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(height: 26),
                  Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.fromLTRB(16,24,16,0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: profileType.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.fromLTRB(16,0,16,24),
                            child: Container(
                              width: 328,
                              height: 89,
                              decoration: BoxDecoration(
                                border: index == selectedIndex
                                    ? Border.all(color: Colors.grey, width: 1.5)
                                    : Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                // borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ListTile(
                                  tileColor: index == selectedIndex
                                      ? Color.fromARGB(51, 197, 199, 199)
                                      : null,
                                  textColor: Colors.black,
                                  leading: index == selectedIndex
                                      ? const Icon(
                                          Icons.radio_button_checked,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.radio_button_unchecked,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                  title: Text(
                                    profileType[index],
                                    style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .3,
                                    ),
                                  ),
                                  subtitle: Text(
                                    profileDescription[index],
                                    style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      letterSpacing: .3,
                                    ),
                                  ),
                                  // trailing: Text(
                                  //   profileIcon[index],
                                  //   style: const TextStyle(
                                  //     fontFamily: 'Nunito',
                                  //     fontWeight: FontWeight.bold,
                                  //     letterSpacing: .3,
                                  //     fontSize: 18,
                                  //   ),
                                  // ),
                                  trailing: Image.asset(
                                    profileIcon[index],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ProfilePage()));
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
            ),
          ),
        ],
      ),
    );
  }
}