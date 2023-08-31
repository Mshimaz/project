import 'package:espar_assignment_app/widgets/likedProfileCard.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/image.png',
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Indian Classical      \nInterest Group",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.group),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Nemo enim ipsam voluptatem\nquia voluptas sit operDatur aut\nodit aur rugit. sed Gulaas osjas aji...",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          )
        ]),
        Container(
          margin: EdgeInsets.all(5),
          child: Row(
            children: [
              Text(
                '5th May 2022 ',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 47, 29, 208),
                ),
              ),
              Text(
                ' to ',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                '5th June 2022',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 47, 29, 208),
                ),
              )
            ],
          ),
        ),
        const LikedProfilesCard()
      ]),
    );
  }
}
