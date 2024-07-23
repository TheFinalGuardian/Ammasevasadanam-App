import 'package:flutter/material.dart';
import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: genAppBar(context),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  genInstructions(context),
                  genArrowAnims(context),
                  genPageInstructions(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar genAppBar(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text('Ammasevasadanam'),
      ),
    );
  }

  Widget genInstructions(BuildContext context) {
    return Column(children: [
      Text(
          '''    This application is meant to be used for logging expenses and donations. To log, please go to the log page to the left. If you would like to see and edit data and statistics, you will need a password. The statistics page is to the right. The log page is to the left.''',
          style: Theme.of(context).textTheme.bodyMedium),
      Text('To navigate between pages:',
          style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }

  Widget genArrowAnims(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Text('SWIPE LEFT',
                    style: Theme.of(context).textTheme.bodyMedium),
                const ArrowAnimation(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Text('SWIPE RIGHT',
                    style: Theme.of(context).textTheme.bodyMedium),
                Transform.scale(scaleX: -1, child: const ArrowAnimation()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget genPageInstructions(BuildContext context) {
    List<Widget> list = genLogInstructions(context);
    list.addAll(genReportInstructions(context));
    return Column(
      children: list,
    );
  }

  List<Widget> genLogInstructions(BuildContext context) {
    return [
      Text('Log Page', style: Theme.of(context).textTheme.bodyMedium),
      Text(
          'First, using the dropdown menu, select the type of log (expense or donation).',
          style: Theme.of(context).textTheme.bodyMedium),
      const Placeholder(color: Colors.black),
      Text('Then, set a particular or list your own if the required particular is not displayed.', style: Theme.of(context).textTheme.bodyMedium),
      const Placeholder(color: Colors.black),
      Text('Enter the VCH type using the dropdown menu and then enter the VCH number.',
          style: Theme.of(context).textTheme.bodyMedium),
      const Placeholder(color: Colors.black),
      Text('Then press the submit button.',
          style: Theme.of(context).textTheme.bodyMedium)
    ];
  }

  List<Widget> genReportInstructions(BuildContext context) {
    return List.empty();
  }
}
