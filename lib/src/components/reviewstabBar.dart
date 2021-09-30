import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsComponents extends StatelessWidget {
  const ReviewsComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                height: 900,
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
                                  KText(
                                    text: '   Khalid Saied Morsy',
                                    // fontFamily: 'Poppins Medium',
                                    fontSize: 13,
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
                                        text: '(',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 8,
                                      ),
                                      KText(
                                        text: ' 1200 Review ',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 11,
                                      ),
                                      KText(
                                        text: ')',
                                        color: AppTheme.textColor2,
                                        fontFamily: 'Poppins Medium',
                                        fontSize: 8,
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
                        Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
Lorem ipsum dolor sit amet, consectetur adipisce
nw elit, sed do eiusmodLorem ipsum dolor sit ami
etretqr consectetur adipiscen''',
                          style: TextStyle(
                            wordSpacing: 1,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
