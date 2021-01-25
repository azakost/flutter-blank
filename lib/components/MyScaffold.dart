import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles.dart';

class MyScaffold extends StatelessWidget {
  final Widget drawer;
  final Widget body;
  final Function() float;
  final IconData floatIcon;
  final Widget leading;
  final String title;
  final Widget action;
  final List<Widget> navs;
  MyScaffold({
    this.drawer,
    this.body,
    this.float,
    this.floatIcon,
    this.leading,
    this.action,
    this.title = "",
    this.navs,
  });
  @override
  Widget build(BuildContext context) {
    double appBarHeight = 72;
    double floatSize = 60;
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: drawer,
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                if (leading != null) leading,
                title == "" ? Image.asset("assets/logo.png", height: 42) : h1(title),
                if (action != null) action,
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            height: appBarHeight,
            padding: EdgeInsets.symmetric(horizontal: 4),
          ),
          elevation: 0,
          titleSpacing: 0,
          toolbarHeight: appBarHeight,
          backgroundColor: transparent,
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: float == null
            ? null
            : FloatingActionButton(
                onPressed: () {
                  HapticFeedback.heavyImpact();
                  float();
                },
                child: Container(
                  width: floatSize,
                  height: floatSize,
                  child: Icon(floatIcon),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: mainGradient,
                  ),
                ),
              ),
        bottomNavigationBar: navs == null
            ? null
            : BottomAppBar(
                child: Row(
                  children: navs,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                notchMargin: 12,
                shape: CircularNotchedRectangle(),
                color: white,
              ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: body,
        ),
        extendBody: true,
        backgroundColor: transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),

      // Scaffold background
      decoration: BoxDecoration(gradient: bgGradient),
    );
  }
}
