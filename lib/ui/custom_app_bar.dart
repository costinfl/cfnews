import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:cfnews/assets.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,

      title: _Title(),
    );
  }
}

class _Title extends StatelessWidget {
  _Title();

  @override
  Widget build(BuildContext context) {
    final title = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(StringAssets.applicationName),
      ],
    );

    return GestureDetector(
        child: Row(
          children: [
            Image.asset(ImageAssets.logoImage, width: 28.0, height: 28.0),
            const SizedBox(width: 8.0),
            title,
          ],
        ),
        onDoubleTap: () =>
            Flushbar(
              flushbarPosition: FlushbarPosition.BOTTOM,
              title: 'About',
              message: StringAssets.author,
              duration: Duration(seconds: 2),
            )..show(context));
  }
}
