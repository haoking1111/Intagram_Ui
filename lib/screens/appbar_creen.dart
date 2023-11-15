import 'package:flutter/material.dart';
// ignore: camel_case_types
class Header_ins extends StatelessWidget {
  const Header_ins({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 14, right: 14),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 128,
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/appbar/logo.png',),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(
              width: 120,
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/appbar/heart_icon.png'),
                  Image.asset('assets/images/appbar/messeger_icon.png'),
                  Image.asset('assets/images/appbar/add_story_icon.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}