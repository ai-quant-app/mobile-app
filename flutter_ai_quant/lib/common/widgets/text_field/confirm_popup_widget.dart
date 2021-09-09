import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'package:flutter_ai_quant/common/widgets/text_field/custom_textfield_widget.dart';

class ConfirmopUpWidget extends StatefulWidget {
  @override
  _ConfirmopUpWidgetState createState() => _ConfirmopUpWidgetState();
}

class _ConfirmopUpWidgetState extends State<ConfirmopUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
          child: Text("Xác nhận", style: TextStyle(fontSize: 40.sp)),
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Color(0xFF1ACB45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.sp)),
          ),
          onPressed: () {
            _showMyDialog();
          }),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        ResponsiveWidgets.init(context,
            height: 1920, width: 1080, allowFontScaling: false);
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text('Xác nhận đặt lệnh',
                      style: TextStyle(fontSize: 50.sp)),
                ),
                //Rows
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Loại lệnh đặt"),
                      Text("Short", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Số hợp đồng"),
                      Text("1"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mã CK"),
                      Text("VN30F1901"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Giá đặt"),
                      Text("824"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mã pin"),
                      Expanded(
                        child: Container(
                          child: CustomTextFieldWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text("Lưu pin", style: TextStyle(fontSize: 35.sp)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text("Thực hiện lệnh không cần xác nhận",
                        style: TextStyle(fontSize: 35.sp)),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Hủy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Đi lệnh'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
