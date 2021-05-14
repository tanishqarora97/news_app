import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 150,
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/modi1.jpg',
                  fit: BoxFit.fill,
                  height: 105,
                  width: 105,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'This is Heading of the realte\nnew ws this is and go on',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'This is Heading of the realte new\nws this is another heading',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                  ),
                  Text(
                    '03-03-2021',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.orange,
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.bookmark_border)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
