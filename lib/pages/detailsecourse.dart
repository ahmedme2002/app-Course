import 'package:appcourse/pages/description.dart';
import 'package:appcourse/pages/pageone.dart';
import 'package:appcourse/pages/videos.dart';
import 'package:flutter/material.dart';

class Detalisecourse extends StatefulWidget {
  final data;
  const Detalisecourse({super.key, this.data});

  @override
  State<Detalisecourse> createState() => _DetalisecourseState();
}

class _DetalisecourseState extends State<Detalisecourse> {
  bool isvediosection = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                color: Color(0xFF674AEF),
              ),
            )
          ],
          title: Text(widget.data["text"]),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(widget.data['images'])),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                    child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.play_arrow,
                    size: 35,
                    color: Color(0xFF674AEF),
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${widget.data['text']} Complete Course',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Created by Ahmed Programmer',
                style: TextStyle(),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${widget.data['title']}',
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      color: isvediosection
                          ? Color(0xFF674AEF).withOpacity(0.5)
                          : Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isvediosection = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Text(
                            'Videos',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: isvediosection
                          ? Color(0xFF674AEF)
                          : Color(0xFF674AEF).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isvediosection = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Text(
                            'Description',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              isvediosection ? Videos() : Description(),
            ],
          ),
        ));
  }
}
