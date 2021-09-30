import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';

class PrivacyAndPolicy extends StatelessWidget {
  const PrivacyAndPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      KText(
                        text: 'Privacy Policy',
                        fontSize: 17,
                        fontFamily: 'Poppins Semi Bold',
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '''Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
Lorem ipsum dolor sit amet, consectetur
adipiscenw  
Lorem ipsum dolor sit amet, consectetur 
adipiscenw elit, sed do eiusmodLorem ipsum dolor
sit ametretqr
''',
                    style: TextStyle(
                      wordSpacing: 2,
                      color: Colors.black54,
                      fontFamily: 'Poppins Medium',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
