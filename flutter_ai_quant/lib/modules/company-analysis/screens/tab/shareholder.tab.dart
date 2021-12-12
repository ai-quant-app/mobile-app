import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/info-table.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class ShareholderTab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    // holder data
    final List<String> holderColumnHeaders = ['Holder', 'Number'];
    final List<List<String>> holderColumnData = [
      ['Tổng Công ty Xây dựng và Phát triển hạ tầng (Licogi)', ''],
      ['VOF INVESTMENT LIMITED', ''],
      ['Tổng Công ty Tài chính Cổ phần Dầu khí Việt Nam', ''],
      ['VIETNAM INVESTMENT LIMITED', ''],
    ];

    // officers data
    final List<String> officersColumnHeaders = ['NAME', 'POSITION'];
    final List<List<String>> officersColumnData = [
      ['Bùi Dương Hùng', 'Chairman'],
      ['Don Di Lam', 'Board member'],
    ];

    // company sale
    final List<TwoSectionsCardModel> companySaleData = [
        TwoSectionsCardModel('Charter Capital (VND)', '136,000,000,000'),
        TwoSectionsCardModel('Common Shares', '13,600,000'),
        TwoSectionsCardModel('Common Shares Outstanding', '13,383,500'),
        TwoSectionsCardModel('Branch(es)', '1'),
        TwoSectionsCardModel('Number of Employees', '155'),
    ];

    final List<TwoSectionsCardModel> ownershipStructureData = [
        TwoSectionsCardModel('Owner', 'Ration'),
        TwoSectionsCardModel('State', '11.7%'),
        TwoSectionsCardModel('Foreign Ownership', '27.6%'),
        TwoSectionsCardModel('Other', '60.8%'),
    ];

    return ResponsiveWidgets.builder(
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
      child: Scaffold(
        backgroundColor: Color(0xff062D52),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BasicInfo(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InfoTable("MAJOR HOLDERS", holderColumnHeaders, holderColumnData),
                  InfoTable("TOP OF COMPANY OFFICERS", officersColumnHeaders, officersColumnData),
                  TwoSectionsCard("COMPANY SCALE", companySaleData),
                  TwoSectionsCard("OWNERSHIP STRUCTURE", ownershipStructureData),
                ],
              )
            ],
          ),
        )
      )
    );
  }
}