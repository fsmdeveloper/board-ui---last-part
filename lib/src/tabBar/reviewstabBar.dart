import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ReviewsBar extends StatelessWidget {
  const ReviewsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                height: 1500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/img/bid-img-2.jpg',
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: KText(
                                      text: 'khalidSaiedMorsy',
                                      // fontFamily: 'Poppins Medium',
                                      fontSize: 13,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      SizedBox(width: 2),
                                      KText(
                                        text: '4.5',
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 11,
                                      ),
                                      SizedBox(width: 5),
                                      KText(
                                        text: '( 1200 ',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 11,
                                      ),
                                      KText(
                                        text: 'review',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 11,
                                      ),
                                      KText(
                                        text: ' )',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 11,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              RatingBarIndicator(
                                rating: 4,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 4,
                                itemSize: 20,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade50),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Text(
                              'reviewsAbout'.tr,
                              style: TextStyle(
                                wordSpacing: 1,
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
