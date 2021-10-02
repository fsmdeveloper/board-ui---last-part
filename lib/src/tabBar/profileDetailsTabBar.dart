import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileDetailsBar extends StatelessWidget {
  ProfileDetailsBar({Key? key}) : super(key: key);
  final imgPortfolio = [
    {'img': 'assets/img/cata-3.jpg'},
    {'img': 'assets/img/cata-2.jpg'},
    {'img': 'assets/img/cata-1.jpg'},
    {'img': 'assets/img/cata-3.jpg'},
    {'img': 'assets/img/cata-2.jpg'},
    {'img': 'assets/img/cata-1.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            KText(
                              text: '99%',
                              fontSize: 15,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            KText(
                              text: 'projectDone',
                              fontSize: 10,
                              color: Colors.black54,
                              fontFamily: 'Poppins Medium',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            KText(
                              text: '83%',
                              fontSize: 15,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            KText(
                              text: 'onTime',
                              fontSize: 10,
                              color: Colors.black54,
                              fontFamily: 'Poppins Medium',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            KText(
                              text: '70%',
                              fontSize: 15,
                              fontFamily: 'Poppins Semi Bold',
                            ),
                            KText(
                              text: 'withInBudget',
                              fontSize: 10,
                              color: Colors.black54,
                              fontFamily: 'Poppins Medium',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade50.withOpacity(.30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: KText(
                        text: 'profileAbout',
                        fontSize: 11,
                        fontWeight: AppTheme.normal,
                        color: Colors.black45,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    children: [
                      KText(
                        text: 'portfolio',
                        fontSize: 16,
                        fontFamily: 'Poppins Medium',
                      ),
                      Spacer(),
                      KText(
                        text: 'viewAll',
                        fontSize: 14,
                        color: AppTheme.iconColor,
                        fontFamily: 'Poppins Medium',
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.iconColor,
                        size: 11,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 1,
                        ),
                        itemCount: imgPortfolio.length,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (BuildContext context, int index) {
                          final img = imgPortfolio[index];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              '${img['img']}',
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      KText(
                        text: 'skills',
                        fontSize: 16,
                        fontFamily: 'Poppins Medium',
                      ),
                      Spacer(),
                      KText(
                        text: 'viewAll',
                        fontSize: 14,
                        color: AppTheme.iconColor,
                        fontFamily: 'Poppins Medium',
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppTheme.iconColor,
                        size: 11,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ListView(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'graphicDesign',
                            fontSize: 15,
                            color: AppTheme.textColor.withOpacity(.70),
                            fontFamily: 'Poppins Medium',
                          ),
                          Container(
                            clipBehavior: Clip.none,
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  height: 5,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: AppTheme.iconColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'architecture',
                            fontSize: 15,
                            color: AppTheme.textColor.withOpacity(.70),
                            fontFamily: 'Poppins Medium',
                          ),
                          Container(
                            clipBehavior: Clip.none,
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  height: 5,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppTheme.iconColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'logoDesign',
                            fontSize: 15,
                            color: AppTheme.textColor.withOpacity(.70),
                            fontFamily: 'Poppins Medium',
                          ),
                          Container(
                            clipBehavior: Clip.none,
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  height: 5,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: AppTheme.iconColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
