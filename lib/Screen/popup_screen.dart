import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/account_bar.dart';
import 'home_page.dart';

class PopUpDialog extends StatelessWidget {
  const PopUpDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      child: Column(
        children: [
          AccountBar(),
          Expanded(
            flex: 6,
            child: Center(
              child: Container(
                height: 300,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/proPic.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
              flex: 2,
              child: Text(
                "View Post",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}