import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  final notificationData = [
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-2.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
    {
      'iconImg': 'assets/icon/notification-msg.png',
      'name': 'mohammedAlaa',
      'msg': 'notificationsMsg',
      'time': '3HoursAgo',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 300,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: KText(
                    text: 'notifications',
                    color: AppTheme.textColor,
                    fontFamily: 'Poppins Semi Bold',
                    fontSize: 15,
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              text: '${item['name']}'.tr,
                              style: TextStyle(
                                fontWeight: AppTheme.regular,
                                color: AppTheme.iconColor,
                                fontSize: 12.50,
                              ),
                              children: [
                                TextSpan(
                                  text: '${item['msg']}'.tr,
                                  style: TextStyle(
                                    color: AppTheme.textColor,
                                    fontWeight: AppTheme.regular,
                                    fontSize: 12.50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: KText(
                              text: '${item['time']}'.tr,
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
