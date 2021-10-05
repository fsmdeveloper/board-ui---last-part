import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/projectPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployerBar extends StatelessWidget {
  EmployerBar({Key? key}) : super(key: key);

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () => Get.to(ProjectPage()),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: 'ongoing',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(height: 5),
                          KText(
                            text: 'projectTitles',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.textColor,
                            maxLines: 1,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              KText(
                                text: '2 ',
                                fontSize: AppTheme.textSize12,
                                color: AppTheme.textColor2,
                              ),
                              KText(
                                text: 'milestonesCreated',
                                fontSize: AppTheme.textSize12,
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
                                fontSize: AppTheme.textSize12,
                                color: AppTheme.textColor2,
                              ),
                              KText(
                                text: 'sar',
                                fontSize: AppTheme.textSize12,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 8),
                                          KText(
                                            text: 'muhammedZakria',
                                            fontWeight: AppTheme.medium,
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
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
