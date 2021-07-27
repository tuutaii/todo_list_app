import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: DefaultTabController(
          length: 2,
          child: AppBar(
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 18, fontFamily: 'f1'),
              tabs: [
                Tab(
                  text: 'Today',
                ),
                Tab(
                  text: 'Month',
                )
              ],
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicator: UnderlineTabIndicator(
                  insets: EdgeInsets.symmetric(horizontal: 46)),
            ),
            title: Text(
              'Work list',
              style: TextStyle(
                fontFamily: 'f1',
              ),
            ),
            backgroundColor: Color(0xFFF96060),
            actions: [Image.asset('assets/images/icon.png')],
            centerTitle: true,
          ),
        ));
  }
}
