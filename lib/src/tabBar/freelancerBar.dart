import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';

class FreelancerBar extends StatelessWidget {
  const FreelancerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KText(
                  text: 'Ongoing',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryColor,
                ),
                // SizedBox(height: 10),
                KText(
                  text: 'bidAbout',
                  fontSize: 18,
                  color: AppTheme.textColor,
                  maxLines: 1,
                ),
                // SizedBox(height: 10),
                Row(
                  children: [
                    KText(
                      text: '2 ',
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                    KText(
                      text: 'Milestones Created  ',
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      backgroundColor: AppTheme.textColor2,
                      radius: 2,
                    ),
                    SizedBox(width: 5),
                    KText(
                      text: '4,000 ',
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                    KText(
                      text: 'sar',
                      fontSize: AppTheme.textSize13,
                      color: AppTheme.textColor2,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 8),
                                KText(
                                  text: 'Muhammed Zakria',
                                  fontFamily: 'Poppins Medium',
                                  fontSize: 13,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 5),
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 2.50,
                          backgroundColor: AppTheme.iconColor,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 2.50,
                          backgroundColor: AppTheme.iconColor,
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 2.50,
                          backgroundColor: AppTheme.iconColor,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
    );
  }
}
