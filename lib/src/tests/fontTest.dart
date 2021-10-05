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


}









  