
import 'package:flut_startup/Responsive/dimension.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Res_Layout extends StatelessWidget {
  final Widget Webscreenlayout;
  final Widget Mobilescreenlayout;

  const Res_Layout({Key? key, required this.Webscreenlayout, required this.Mobilescreenlayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > webscreen){
        return Webscreenlayout;

        //Webscreen
      }
// mobilescreen
return Mobilescreenlayout;
    }
    );
  }
}