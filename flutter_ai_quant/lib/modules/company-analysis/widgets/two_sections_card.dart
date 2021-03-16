import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_quant/modules/company-analysis/models/two-sections-card.model.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
class TwoSectionsCard extends StatefulWidget {
  final String title;
  final List<TwoSectionsCardModel> data;
  TwoSectionsCard(this.title, this.data, {Key key}): super(key: key);
  @override
  _TwoSectionsCardState createState() => _TwoSectionsCardState();
}

class _TwoSectionsCardState extends State<TwoSectionsCard> {
   List<Widget> _generate() {
     List<Widget> ret = [];
     ret.add(
       Container(
           margin: EdgeInsetsResponsive.only(left: 50.sp, top: 50.sp, bottom: 50.sp),
           alignment: Alignment.centerLeft,
           child: Text(widget.title, style: TextStyle(color: Colors.blue))
       )
     );

     widget.data.forEach((TwoSectionsCardModel item) {
       ret.add(Container(
           margin: EdgeInsetsResponsive.only(left: 150.sp, right: 150.sp),
           padding: EdgeInsetsResponsive.only(top: 100.sp, bottom: 100.sp),
           decoration: BoxDecoration(
             border: Border(
                 bottom: BorderSide(width: 1.sp, color: Colors.grey)
             ),
           ),
           child: Row(
             children: [
               Expanded(
                   child: Align(
                     child: Text(item.key, style: TextStyle(color: item.keyColor)),
                     alignment: Alignment.centerLeft,
                   )
               ),
               item.valueIcon != null ?
               Expanded(
                   // child: Align(
                     child: Row(
                         children: [
                           Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child:Text(item.value, style: TextStyle(color: item.valueColor))
                              )
                           ),
                           Icon(item.valueIcon, color: Colors.white)
                         ]
                     ),
                     // alignment: Alignment.centerRight,
                   // )
               ) : Expanded(
                   child: Align(
                     child: Text(item.value, style: TextStyle(color: item.valueColor)),
                     alignment: Alignment.centerRight,
                   )
               )

             ],
           )
       )
       );
     });
     return ret;
   }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 10.sp, color: Colors.grey)
          ),
        ),
        child: Column(
          children: _generate(),
        ));
  }
}


