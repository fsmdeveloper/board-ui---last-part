import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/pages/PaymilestonePage.dart';
import 'package:board_ui/src/widgets/backButton.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class ProjectDetailsPage extends StatefulWidget {
  ProjectDetailsPage({Key? key}) : super(key: key);

  @override
  _ProjectDetailsPageState createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage> {
  var value;
  // ignore: unused_field
  late String _selected;

  List<Map> dropDownItem = [
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
    {
      'id': '1',
      'minBudget': '10,000,',
      'maxBudget': '15,000,',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                backButton(),
                SizedBox(
                  height: 30,
                ),
                KText(
                  text: 'projectDetails',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize18,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 13,
                ),
                KText(
                  text: 'projectDetailsAbout',
                  fontWeight: AppTheme.regular,
                  fontSize: AppTheme.textSize13,
                  color: AppTheme.textColor2,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  clipBehavior: Clip.none,
                  height: 6,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 6,
                        width: Get.width / 2.20,
                        decoration: BoxDecoration(
                          color: AppTheme.iconColor.withOpacity(.70),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                KText(
                  text: 'projectDetailsTitle',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize13,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 55,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textColor,
                    ),
                    decoration: InputDecoration(
                      hintText: 'projectDetailsTitleField'.tr,
                      hintStyle: TextStyle(
                        fontSize: AppTheme.textSize12,
                        color: AppTheme.textColor2,
                      ),
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                KText(
                  text: 'projectDetailsProjectBudget',
                  color: AppTheme.textColor,
                  fontSize: AppTheme.textSize13,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: Get.width,
                  child: OutlineDropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '10,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            KText(
                              text: ' ~',
                              color: AppTheme.iconColor,
                              fontSize: 16,
                            ),
                            RichText(
                              text: TextSpan(
                                text: ' 15,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'sar'.tr,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppTheme.textColor2,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        value: 'none',
                      ),
                    ],
                    isExpanded: true,
                    hint: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '10,000 ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        KText(
                          text: ' ~',
                          color: AppTheme.iconColor,
                          fontSize: 16,
                        ),
                        RichText(
                          text: TextSpan(
                            text: ' 15,000 ',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textColor,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                text: 'sar'.tr,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textColor2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.expand_more,
                          size: 20,
                        )
                      ],
                    ),
                    iconSize: 0,
                    value: value,
                    onChanged: (value) => print(value),
                  ),
                ),
                SizedBox(height: 30),
                KText(
                  text: 'bidDescription',
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: AppTheme.textColor,
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: Get.width,
                  child: TextField(
                    maxLines: 200,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'projectDetailsDescriptionField'.tr,
                      hintStyle: TextStyle(
                        color: AppTheme.textColor2,
                        fontSize: 12,
                      ),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  onTap: () => Get.to(PayMileStonePage()),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: KText(
                        text: 'continue',
                        color: AppTheme.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
