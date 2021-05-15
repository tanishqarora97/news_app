import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String headingText;
  final String description;
  CustomCard(
    this.headingText,
    this.description,
    this.image,
  );
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
                  image,
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
                  headingText,
                  style: kCustomCardHeadingStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  description,
                  style: kCustomCardDescriptionStyle,
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
