import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<Map<String, dynamic>> locales = [
  {
    'name': 'English',
    'locale': Locale('en', 'US'),
  },
  {
    'name': 'Arabic',
    'locale': Locale('ar'),
  },
];
updateLocal(Locale locale, BuildContext context) {
  Navigator.of(context).pop();
  Get.updateLocale(locale);
}

late bool isLanguageEnglish = true;

showDialouge(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Row(
        children: [
          KText(text: 'Select a Language '),
          Icon(
            Icons.expand_more,
            size: 20,
          ),
        ],
      ),
      content: Container(
        width: Get.width,
        child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              updateLocal(locales[index]['locale'], context);
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: AppTheme.primaryColor,
                child: ListTile(
                  leading: Icon(
                    Icons.language,
                    size: 20,
                    color: AppTheme.white,
                  ),
                  title: KText(
                    text: locales[index]['name'],
                    fontSize: 17,
                    color: AppTheme.white,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: AppTheme.iconColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
              Divider(color: Colors.transparent),
          itemCount: locales.length,
        ),
      ),
    ),
  );
}
