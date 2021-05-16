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
      margin: EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        height: 140,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    height: 120,
                    width: 115,
                  ),
                ),
              ],
            ),
            Container(
              height: 145,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: MediaQuery.of(context).size.width * 0.61,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '03-03-2021',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          color: Colors.orange[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 1,
                          ),
                          child: Text(
                            'Sports',
                            style: kInfoTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.bookmark_border)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
