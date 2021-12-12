import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/common/constants/app-dimension.constant.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/basic_info.dart';
import 'package:flutter_ai_quant/modules/company-analysis/widgets/two_sections_card.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class OverviewTab extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: AppDimension.screenHeight,
      width: AppDimension.screenWidth,
      allowFontScaling: false,
    );

    
  // company sale
  final List<TwoSectionsCardModel> companyDescriptionData = [
      TwoSectionsCardModel('Code', 'LCG'),
      TwoSectionsCardModel('Company name', 'Công ty Cổ phần Licogi 16'),
      TwoSectionsCardModel('Address', '49B Phan Đăng Lưu, Phường 7, Thành phố Hồ Chí Minh'),
      TwoSectionsCardModel('Phone number', '84 8 3841 1375'),
      TwoSectionsCardModel('Website', 'www.licogi16.com'),
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
                  TwoSectionsCard('Company Description', companyDescriptionData),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Company Profile',
                            style: TextStyle(color: Colors.blue)
                          ),
                        ),
                        Text(
                          '- Thi công xây dựng các công trình dân dụng, công nghiệp, giao thông, thủy lợi, thủy điện, sân bay, bến cảng, đường dây và các trạm biến thế điện; các công trình cấp thoát nước và vệ sinh môi trường, nền móng công trình;',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '- Sản xuất, mua bán vật tư, thiết bị, phụ tùng và các loại vật liệu xây dựng, ống cống bê tông, bê tông thương phẩm;',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      )
    );
  }
}