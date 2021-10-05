import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestFonts extends StatefulWidget {
  const TestFonts({Key? key}) : super(key: key);

  @override
  _TestFontsState createState() => _TestFontsState();
}

class _TestFontsState extends State<TestFonts> {
  String isLanguageEnglish = 'Poppins';

  String font = 'Poppins';

  List<String> fonts = ['Poppins', 'Cairo'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(48),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Google Fonts',
                style: GoogleFonts.getFont(font, fontSize: 48),
              ),
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(),
                itemCount: fonts.length,
                itemBuilder: (context, index) {
                  // ignore: deprecated_member_use
                  return FlatButton(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      fonts[index],
                      style: GoogleFonts.getFont(fonts[index],
                          fontSize: 32, color: Colors.white),
                    ),
                    onPressed: () => setState(() {
                      font = fonts[index];
                    }),
                    color: Colors.black,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  fontFamily(Locale locale, BuildContext context, int index) async {
    try {
      FlatButton(
        padding: EdgeInsets.all(8),
        child: Text(
          fonts[index],
          style: GoogleFonts.getFont(fonts[index],
              fontSize: 32, color: Colors.white),
        ),
        onPressed: () => setState(() {
          font = fonts[index];
        }),
        color: Colors.black,
      );
    } catch (e) {
      print(e);
    }
  }
}









  // void updateProduct({required String id, required Map<String, dynamic> item}) {
  //   _firestore
  //       .collection('products')
  //       .doc('id')
  //       .update({
  //         'title': title.value = item['title'],
  //         'price': price.value = item['price'],
  //         'discount': discount.value = item['discount'],
  //         'rating': rating.value = item['rating'],
  //         'description': description.value = item['description'],
  //       })
  //       .then((value) => print('Product Added'))
  //       .catchError((error) => print('Failed to added product: $error'));
  // }