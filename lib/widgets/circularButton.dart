import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final Function onPressed;
  CircularButton({this.color, this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: ScreenUtil().setWidth(120),
      height: ScreenUtil().setHeight(120),
      decoration:
          BoxDecoration(color: color, shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 10),
          blurRadius: 10,
          spreadRadius: 4,
        )
      ]),
      child: RawMaterialButton(
        shape: CircleBorder(),
        onPressed: onPressed,
        child: icon,
      ),
    );
  }
}
