import 'package:flutter/material.dart';

class LikedProfilesCard extends StatelessWidget {
  const LikedProfilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              child: const Align(
                widthFactor: 0.5,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage("assets/download (1).jpg"),
                  ),
                ),
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              child: const Align(
                widthFactor: 0.5,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage("assets/download.jpg"),
                  ),
                ),
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              child: const Align(
                widthFactor: 0.5,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage("assets/download.png"),
                  ),
                ),
              )),
          const SizedBox(
            width: 15,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 80, 80, 80),
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'AlexStolfat12 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: ' & '),
                TextSpan(
                    text: ' 46  others ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                TextSpan(text: ' are \ninterested'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
