import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Telefon Numarası',
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      top: 10,
                      left: 0,
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: const [
                            Spacer(),
                            Icon(CupertinoIcons.chevron_down, size: 16,),
                            SizedBox(width: 5,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: InternationalPhoneNumberInput(
                        hintText: 'Telefon Numarası',
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          setSelectorButtonAsPrefixIcon: false,
                          leadingPadding: 10,
                          showFlags: false,
                          trailingSpace: true,
                        ),
                        initialValue: PhoneNumber(isoCode: 'TR'),
                        textFieldController: TextEditingController(),
                        formatInput: false,
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputDecoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          // labelText: 'Telefon Numarası',
                        ),
                        textStyle: const TextStyle(color: Colors.black),
                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },
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
