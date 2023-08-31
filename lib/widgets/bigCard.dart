import 'package:espar_assignment_app/widgets/likedProfileCard.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
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
        Stack(
          children: [
            SizedBox(
              height: 230,
              child: Image.asset(
                'assets/drums.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
                top: 3,
                right: 3,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "   Kakilambe Group      \n   summer'22",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.group,
              size: 30,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            children: const [
              Text(
                '   5th May 2022 ',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 47, 29, 208),
                ),
              ),
              Text(
                '   to    ',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                '5th June 2022',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 47, 29, 208),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 10,
            ),
            Text(
              "Nemo enim ipsam voluptatem voluptatem\nquia voluptas sit operDatur aut operDatur aut\nodit  aur  rugit.  sed  Gulaas  osjas  aji...",
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -3),
          leading: CircleAvatar(
            radius: 14,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/download.jpg"),
            ),
          ),
          title: Text('Admin',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          subtitle: Text(
            'Lokamanya dance club',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 80, 80, 80),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const LikedProfilesCard(),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 5,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  print("Like button pressed");
                },
                icon: const Icon(Icons.thumb_up_alt_outlined)),
            IconButton(
                onPressed: () {
                  print("Comment button pressed");
                },
                icon: const Icon(Icons.comment_outlined)),
            IconButton(
                onPressed: () {
                  print("Share button pressed");
                },
                icon: const Icon(Icons.share_outlined)),
          ],
        )
      ]),
    );
  }
}
