import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ConfirmopUpWidget extends StatefulWidget {
  @override
  _ConfirmopUpWidgetState createState() => _ConfirmopUpWidgetState();
}

class _ConfirmopUpWidgetState extends State<ConfirmopUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
          child: Text("Mua", style: TextStyle(fontSize: 40.sp)),
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
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                print('Confirmed');
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
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
