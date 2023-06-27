import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({
    super.key,
  });

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

const List<String> list = <String>['English', 'हिन्दी'];

class _SelectLanguageState extends State<SelectLanguage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all()),
      width: 216,
      height: 48,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? value) {
            value == "हिन्दी"
                ? Get.updateLocale(const Locale('hi'))
                : Get.updateLocale(const Locale('en'));
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
