import 'package:board_ui/src/configs/appTheme.dart';
import 'package:board_ui/src/controllers/advanceController.dart';
import 'package:board_ui/src/widgets/advanceSegment.dart';
import 'package:board_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SegmentButtonTest extends StatefulWidget {
  const SegmentButtonTest({Key? key}) : super(key: key);

  @override
  _SegmentButtonTestState createState() => _SegmentButtonTestState();
}

class _SegmentButtonTestState extends State<SegmentButtonTest>
    with SingleTickerProviderStateMixin {
  //
  late AdvancedSegmentController _advanceC =
      AdvancedSegmentController('freelancher');
  //
  late TabController _tabController;

//

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//

  final segmentName = {
    'freelancer': 'freelancer'.tr,
    'employer': 'employer'.tr,
  };
//
  var _value = 'freelancer';

  //
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Padding(
          padding: AppTheme.paddingH30,
          child: Column(
            children: [
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: AppTheme.primaryColor,
              // ),
              Container(
                decoration: BoxDecoration(
                  color: AppTheme.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tabs: [
                      Tab(text: '1'),
                      Tab(text: '1'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget advanceSegment() {
    return Center(
      child: AdvancedSegment(
        sliderOffset: 5,
        sliderColor: Colors.white,
        backgroundColor: Colors.white24,
        shadow: [
          BoxShadow(
            color: Colors.transparent,
          ),
        ],
        activeStyle: GoogleFonts.cairo(
          fontWeight: AppTheme.semi,
          color: AppTheme.primaryColor,
        ),
        inactiveStyle: GoogleFonts.cairo(
          fontWeight: AppTheme.semi,
          color: AppTheme.white,
        ),
        // itemPadding: EdgeInsets.symmetric(
        //   horizontal: 50,
        //   vertical: 12,
        // ),
        segments: segmentName,
        controller: _advanceC,
        onValueChanged: (groupValues) {
          setState(() {
            _value = groupValues;
          });
        },
        value: _value,
      ),
    );
  }
}
