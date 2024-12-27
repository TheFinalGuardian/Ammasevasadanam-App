// ignore_for_file: must_be_immutable

import 'package:ammasevasadanam_app/home_page.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:ammasevasadanam_app/nav_bar.dart';
import 'package:ammasevasadanam_app/report_page_stuff/report_page.dart';
import 'package:flutter/material.dart';

class PageViewVersion extends StatefulWidget {
  PageViewVersion({super.key});

  LogPage logpage = LogPage();
  HomePage homepage = const HomePage();
  ReportPage reportpage =  const ReportPage();

  List<Widget> pages = [LogPage(), const HomePage(),  const ReportPage()];

  LogPage getLogPage() {
    return logpage;
  }

  HomePage getHomePage() {
    return homepage;
  }

  ReportPage getReportPage() {
    return reportpage;
  }

  @override
  State<PageViewVersion> createState() => _PageViewVersionState();
}

int pageChanged = 1;
PageController pageController = PageController(initialPage: 1);

class _PageViewVersionState extends State<PageViewVersion> {
  void changePage(int x) {
    pageController.jumpToPage(x);
    track = x;
  }

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
            GestureDetector(
                onPanUpdate: (details) {
                  if (details.delta.dy != 0) {
                    Scrollable.ensureVisible(
                      context,
                      alignment: 0.5,
                    );
                  }
                },
                child: widget.logpage),
            GestureDetector(
                onPanUpdate: (details) {
                  if (details.delta.dy != 0) {
                    Scrollable.ensureVisible(
                      context,
                      alignment: 0.5,
                    );
                  }
                },
                child: widget.homepage),
            GestureDetector(
                onPanUpdate: (details) {
                  if (details.delta.dy != 0) {
                    Scrollable.ensureVisible(
                      context,
                      alignment: 0.5,
                    );
                  }
                },
                child: widget.reportpage),
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
            onTap: (int index) {
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
            }));
  }
}
