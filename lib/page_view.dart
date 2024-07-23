import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page_place_holder_with_scroll.dart';
import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:ammasevasadanam_app/place_holders/report_page_place_holder.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class PageViewVersion extends StatefulWidget {
  @override
  State<PageViewVersion> createState() => _PageViewVersionState();
}

int pageChanged = 1;

List<Widget> pages = [LogPagePlaceHolderWithScroll(), HomePage(), ReportPagePlaceHolder()];
PageController pageController = PageController(initialPage: 1);

class _PageViewVersionState extends State<PageViewVersion> {

  void changePage(int x){
    pageController.jumpToPage(x);
    track = x;
  }
/*
  void refresh(Duration duration) {
  setState(() {
  });
}

  void changePageAnimate(int x,int swap1, int swap2) async {
    await pageController.animateToPage(pageChanged + x, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    swapPage2(1,0);
  }

  swapPage (int currentPage, int targetPage){
        var temp = pages[currentPage];
        pages[currentPage] = pages[targetPage];
        pages[targetPage] = temp;
        setState(() {
        });
  }
  swapPage2 (int currentPage, int targetPage){
        var temp = pages[currentPage];
        pages[currentPage] = pages[targetPage];
        pages[targetPage] = temp;
  }
*/  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() { 
            pageChanged = index;
            track = index;
          });
        },
        children: [
          pages[0],
          pages[1],
          pages[2],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Log",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: "Report",
          ),
        ],

        onTap: (int index){
          switch (index) {
            case 0:
              if (track == 1) {
                changePage(0);
                track = 0;
              }
              if (track == 2) {
                changePage(0);
                track = 0;
              }
              break;

            case 1:
              if (track == 0) {
                changePage(1);
                track = 1;
              }
              if (track == 2) {
                changePage(1);
                track = 1;
              }
              break;

            case 2:
              if (track == 0) {
                changePage(2);
                track = 2;
              }
              if (track == 1) {
                changePage(2);
                track = 2;
              }
              break;
          }
        }
     )
    );
  }
}


