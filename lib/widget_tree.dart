



import 'package:ammasevasadanam_app/auth.dart';
import 'package:ammasevasadanam_app/login_register_page.dart';
import 'package:ammasevasadanam_app/page_view.dart';
import 'package:flutter/material.dart';

String? userName = "user";
String? userRole = "user";

class WidgetTree extends StatefulWidget{
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {

PageViewVersion createpages(){
  fetch();
  PageViewVersion pages3 = PageViewVersion();
  Future.delayed(const Duration(seconds: 10), () {});
  return pages3;
}

  
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges, 
      builder: (context, snapshot){
        if(snapshot.hasData){
          userName = snapshot.data?.email;
          return createpages();
        } else {
          return const LoginRegisterPage();
        }
      }
      );
  }
}