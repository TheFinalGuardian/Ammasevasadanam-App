import 'package:ammasevasadanam_app/menu_bottom.dart';
import 'package:ammasevasadanam_app/report_page_stuff/download_button.dart';
import 'package:ammasevasadanam_app/report_page_stuff/monthly_entries.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report Page"),
      ),
      body: SingleChildScrollView(
        child: Stack( children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: DownloadButton(),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text("This Month Entries"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
                    child: MonthlyEntries(),
                  ),
                )
              ]
            )
          ]
        )
      )
    );
  }
}
