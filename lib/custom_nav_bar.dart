import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/home_page.dart';
import 'Screen/popup_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,

  }) : super(key: key);


  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Color(0xff94959d),
                      size: 30,
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Color(0xff94959d)),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.explore,
                      color: Color(0xfff4693c),
                      size: 30,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: PopUpDialog(),
                          );
                        },
                      );
                    },
                  ),
                  Text(
                    "Explore",
                    style: TextStyle(color: Color(0xfff4693c)),
                  )
                ],
              ),
              Container(
                height: 90,
                width: 90,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.black,
                    size: 60,
                  ),
                ),
                decoration: BoxDecoration(border: Border(
                    bottom: BorderSide(color: Colors.black, width: 5))
                    ),

              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.inbox,
                      color: Color(0xff94959d),
                      size: 30,
                    ),
                  ),
                  Text(
                    "Inbox",
                    style: TextStyle(color: Color(0xff94959d)),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shop,
                      color: Color(0xff94959d),
                      size: 30,
                    ),
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Color(0xff94959d)),
                  )
                ],
              ),
            ],
          )),
    );
  }
}