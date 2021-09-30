import 'package:board_ui/src/configs/appTheme.dart';

import 'package:board_ui/src/pages/insideChatPage.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  final onlineChat = [
    {
      'name': 'Nada',
      'img': 'assets/img/chat-side1.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Muhamed',
      'img': 'assets/img/chat-side2.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Hazem',
      'img': 'assets/img/chat-img-1.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Sunny',
      'img': 'assets/img/bid-img-1.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Nada',
      'img': 'assets/img/chat-side1.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Muhamed',
      'img': 'assets/img/chat-side2.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Hazem',
      'img': 'assets/img/chat-img-1.jpg',
      'userName': '@nada3446',
    },
    {
      'name': 'Sunny',
      'img': 'assets/img/bid-img-1.jpg',
      'userName': '@nada3446',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      ),
                    ),
                  ),
                  KText(
                    text: 'Chats',
                    fontFamily: 'Poppins Semi Bold',
                    fontSize: 17,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icon/archive.png',
                        width: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: searchbar(),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: onlineChat.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = onlineChat[index];
                        return GestureDetector(
                          onTap: () => Get.to(InsideChatPage()),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppTheme.iconColor,
                                  radius: 27,
                                  child: CircleAvatar(
                                    backgroundColor: AppTheme.white,
                                    radius: 26,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        '${item['img']}',
                                        width: 45,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                KText(
                                  text: '${item['name']}',
                                  fontSize: 13,
                                  fontFamily: 'Poppins Medium',
                                ),
                                KText(
                                  text: '${item['userName']}',
                                  fontSize: 9,
                                  color: AppTheme.textColor2,
                                  fontFamily: 'Poppins Medium',
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(),
                ],
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: onlineChat.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = onlineChat[index];
                  return GestureDetector(
                    onTap: () => Get.to(InsideChatPage()),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: AppTheme.iconColor,
                              radius: 27,
                              child: CircleAvatar(
                                backgroundColor: AppTheme.white,
                                radius: 26,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    '${item['img']}',
                                    width: 45,
                                  ),
                                ),
                              ),
                            ),
                            title: KText(
                              text: 'Nada Abdelhamid',
                              fontSize: 14,
                              fontFamily: 'Poppins Medium',
                            ),
                            subtitle: KText(
                              text: 'lorem ipsum dolor sit amlet amedlor ..',
                              maxLines: 1,
                              fontSize: 11,
                              color: AppTheme.textColor2,
                              fontFamily: 'Poppins Medium',
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: KText(
                                text: '14:01',
                                fontSize: 11,
                                color: AppTheme.iconColor,
                                fontFamily: 'Poppins Medium',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }

 

  Widget searchbar() {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.none,
          height: 60,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300.withOpacity(.80),
                spreadRadius: .10,
                blurRadius: 50,
                offset: Offset(5, 30),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          width: Get.width,
          child: TextField(
            style: TextStyle(fontFamily: 'Poppins Medium'),
            cursorColor: AppTheme.textColor2,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              fillColor: AppTheme.white,
              filled: true,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Icon(
                  Icons.search,
                  size: 24,
                  color: AppTheme.textColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
