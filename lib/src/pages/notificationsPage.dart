import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  final notificationData = [
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'Mohammed Alaa',
      'msg': 'sent a message regarding the project Create School Banner',
      'time': '3 Hours ago',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 300,
          title: Row(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(
                        EvaIcons.arrowIosBack,
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 60),
                    KText(
                      text: 'Notifications',
                      color: AppTheme.textColor,
                      fontFamily: 'Poppins Semi Bold',
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   child: Row(
                //     children: [
                //       IconButton(
                //         onPressed: () => Get.back(),
                //         icon: Icon(
                //           EvaIcons.arrowIosBack,
                //           size: 24,
                //         ),
                //       ),
                //       SizedBox(width: 60),
                //       KText(
                //         text: 'Notifications',
                //         fontFamily: 'Poppins Semi Bold',
                //         fontSize: 17,
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: notificationData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = notificationData[index];
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            '${item['iconImg']}',
                            width: 30,
                          ),
                          title: RichText(
                            text: TextSpan(
                              text: '${item['name']} ',
                              style: TextStyle(
                                fontFamily: 'Poppins Regular',
                                fontWeight: FontWeight.w600,
                                color: AppTheme.iconColor,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                  text: '${item['msg']}',
                                  style: TextStyle(
                                    color: AppTheme.textColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: KText(
                              text: '${item['time']}',
                              fontFamily: 'Poppins Regular',
                              color: AppTheme.textColor2,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 0,
          width: Get.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 120,
                blurRadius: 120,
                offset: Offset(10, 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
