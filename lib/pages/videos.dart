import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List details = [
    "Introduction To Flutter",
    "Installing Flutter On Windows",
    "Setup Emulator On Window",
    "Creating Our Frist App",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: details.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: index == 0
                    ? Color(0xFF674AEF)
                    : Color(0xFF674AEF).withOpacity(0.5)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(details[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
