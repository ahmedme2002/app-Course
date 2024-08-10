import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean semper nibh a urna aliquet bibendum.    ",
            style:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.7)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Course Lenght: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.timer,
                color: Colors.blue,
              ),
              Text(
                '26 Hourse',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Rating: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                "4.5",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
