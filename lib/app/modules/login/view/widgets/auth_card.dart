import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthCard extends StatelessWidget {
  final String image;
  const AuthCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        width: 50,
        height: 50,
        child: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
