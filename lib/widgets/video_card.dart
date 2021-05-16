import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class VideoCard extends StatelessWidget {
  final String image;
  final String text;
  VideoCard(
    this.image,
    this.text,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 105,
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                  height: 80,
                  width: 110,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kVideoCardHeadingStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '03-03-2021',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        child: Card(
                          color: Colors.orange[900],
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 21, vertical: 2),
                            child: Text(
                              'Info',
                              textAlign: TextAlign.center,
                              style: kInfoTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
