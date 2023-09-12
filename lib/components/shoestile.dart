import 'package:flutter/material.dart';
import 'package:shoes_app/model/shop_model.dart';

class shoestile extends StatelessWidget {
  final shoes shoess;
  void Function()? onPressed;
  final Widget icon;
  shoestile(
      {Key? key,
      required this.shoess,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(shoess.name),
        subtitle: Text(shoess.price),
        leading: Image.asset(shoess.imagepath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
