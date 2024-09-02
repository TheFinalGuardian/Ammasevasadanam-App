import 'package:ammasevasadanam_app/report_page_stuff/download_button.dart';
import 'package:ammasevasadanam_app/animations/report_animations/entries.dart';
import 'package:flutter/material.dart';

String bullet = "\u2022 ";

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Report Page"),
           actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          title: const Text("Log Page Information"),
                          content: Column(children: [
                            Text('Report Page',
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(
                                '$bullet If you would like to download your report, press the download button.',
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(
                                '$bullet To edit a log, tap one of the logs listed and scroll down to see later logs.',
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(
                                '$bullet There, you should be able to edit the information using the input bars',
                                style: Theme.of(context).textTheme.bodyMedium)
                          ]),
                          actions: [
                            TextButton(
                                child: const Text("Ok, got it."),
                                onPressed: () => Navigator.pop(context))
                          ],
                        ));
              },
              icon: Image.asset('images/info_button.png'),
            )
          ],
        ),
        body: const SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Stack(children: <Widget>[
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
                        padding:
                            EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
                        child: Entries(),
                      ),
                    )
                  ])
            ])));
  }
}
