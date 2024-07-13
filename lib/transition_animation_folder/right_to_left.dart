import 'package:flutter/material.dart';

Route RightToLeft(Widget T) {
  
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => T,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;
    final tween = Tween(begin: begin, end: end);
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve,
    );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
    
  );
}