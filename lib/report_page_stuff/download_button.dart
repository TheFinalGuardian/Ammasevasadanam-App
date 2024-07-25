import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 324.0,
      height: 36.0,
      child: ElevatedButton(
        onPressed: () {
        },
        child: const Text("Download Monthly Report")
        ),
    );
  }
}