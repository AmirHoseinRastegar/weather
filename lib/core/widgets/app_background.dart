


import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AppBackground {

  static AssetImage getBackgroundImage() {
    DateTime now=DateTime.now();
    String formattedDate=DateFormat('kk').format(now);
    if(6>int.parse(formattedDate)){
      return const AssetImage('assets/img/nightpic.jpg');

    }else if(18>int.parse(formattedDate)){
      return const AssetImage('assets/img/pic_bg.jpg');
    } else{
      return const AssetImage('assets/img/nightpic.jpg');
    }
  }
}