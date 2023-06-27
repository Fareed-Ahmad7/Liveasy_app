import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isRadioSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 112, 0, 0),
            child: Center(
              child: Column(
                children: [
                   Text(
                    AppLocalizations.of(context)!.profileTitle,
                    style:const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: <LabeledRadio>[
                      LabeledRadio(
                        label: AppLocalizations.of(context)!.profileShipper,
                        desc:
                        AppLocalizations.of(context)!.profileDesc,
                        icon: 'assets/images/shipper.png',
                        value: true,
                        groupValue: _isRadioSelected,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected = newValue;
                          });
                        },
                      ),
                      LabeledRadio(
                        label: AppLocalizations.of(context)!.profileTranspoter,
                        desc:
                        AppLocalizations.of(context)!.profileDesc,
                        icon: 'assets/images/transpoter.png',
                        value: false,
                        groupValue: _isRadioSelected,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(328, 56),
                      shape: const LinearBorder(),
                      backgroundColor: const Color.fromRGBO(46, 59, 98, 1),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!.profileButton,
                      style:const TextStyle(
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

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    super.key,
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.icon,
    required this.desc,
  });

  final String label;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;
  final String icon;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
      child: InkWell(
        onTap: () {
          if (value != groupValue) {
            onChanged(value);
          }
        },
        child: Container(
          width: 328,
          height: 89,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            children: <Widget>[
              Radio<bool>(
                activeColor: const Color.fromRGBO(46, 59, 98, 1),
                groupValue: groupValue,
                value: value,
                onChanged: (bool? newValue) {
                  onChanged(newValue!);
                },
              ),
              Image.asset(icon),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(desc),
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
