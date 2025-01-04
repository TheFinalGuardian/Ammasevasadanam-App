import 'package:ammasevasadanam_app/animations/swipe_animations/arrow_animation.dart';
import 'package:ammasevasadanam_app/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String bullet = "\u2022 ";

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: genAppBar(context),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  userID(context),
                  genInstructions(context),
                  genArrowAnims(context),
                  genPageInstructions(context),
                  signOutButton(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton signOutButton(BuildContext context) {
    return ElevatedButton(
        onPressed: signOut, child: const Text('Elevated Button'));
  }

  Text userID(BuildContext context) {
    return Text(user?.email ?? 'User email');
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
    return Column(
      children: [genLogInstructions(context), genReportInstructions(context)],
    );
  }

  Widget genLogInstructions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        Text('Log Page', style: Theme.of(context).textTheme.bodyMedium),
        Text(
            '$bullet First, using the dropdown menu, select the type of log (expense or donation).',
            style: Theme.of(context).textTheme.bodyMedium),
        Text(
            '$bullet Then, set a particular or list your own if the required particular is not displayed.',
            style: Theme.of(context).textTheme.bodyMedium),
        Text(
            '$bullet Enter the VCH type using the dropdown menu and then enter the VCH number.',
            style: Theme.of(context).textTheme.bodyMedium),
        Text('$bullet Then press the submit button.',
            style: Theme.of(context).textTheme.bodyMedium)
      ]),
    );
  }

  Widget genReportInstructions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        Text('Report Page', style: Theme.of(context).textTheme.bodyMedium),
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
    );
  }
}
