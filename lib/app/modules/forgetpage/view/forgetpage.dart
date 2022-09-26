import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:next_hour/app/modules/login/view/widgets/buttons.dart';
import 'package:next_hour/app/modules/utilities/size/size.dart';
import 'package:next_hour/app/modules/utilities/styles/textstyles.dart';

class ForgetPageView extends StatelessWidget {
  const ForgetPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/forgetpassword.svg',
                height: 200,
              ),
              size20,
              const Text(
                'Please Enter your mail\n we will sent you a reset link',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
              size20,
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: labelStyle,
                  hintText: 'E-mail',
                  hintStyle: labelStyle,
                  prefixIcon: const Icon(Icons.mail,
                      color: Color.fromARGB(255, 255, 17, 0)),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              size20,
              ButtonWidgets(
                text: 'Reset',
                onPressed: () {},
              )
            ],
          ),
        )));
  }
}
