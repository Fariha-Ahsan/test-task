import 'package:flutter/cupertino.dart';

class AccountBar extends StatelessWidget {
  const AccountBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Expanded(
        flex: 2,
        child: Row(
          children: [
            Image.asset(
              'assets/images/avatar1.png',
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 2, bottom: 12),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saber Ali",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Dhaka,Bangladesh",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
                onTap: () {
                  print("clicked");
                },
                child: Image.asset(
                  'assets/images/follow_btn.png',
                  width: 70,
                  height: 80,
                ))
          ],
        ),
      ),
    );
  }
}