import 'package:flutter/material.dart';
class PageNo3 extends StatefulWidget {
  const PageNo3({Key? key}) : super(key: key);

  @override
  State<PageNo3> createState() => _PageNo3State();
}

class _PageNo3State extends State<PageNo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Text(
            "Page NO 3"
          ),
        ),
      ),
    );
  }
}
