import 'package:flutter/material.dart';

class TabItem extends StatefulWidget {
  TabItem(
      {@required this.selected,
      @required this.iconData,
      @required this.title,
      @required this.callbackFunction});

  String title;
  IconData iconData;
  bool selected;
  Function callbackFunction;

  @override
  _TabItemState createState() => _TabItemState();
}

const double ICON_OFF = -3;
const double ICON_ON = 0;
const double TEXT_OFF = 3;
const double TEXT_ON = 1;
const double ALPHA_OFF = 0;
const double ALPHA_ON = 1;
const int ANIM_DURATION = 300;
const Color PURPLE = Color(0xFF8c77ec);

class _TabItemState extends State<TabItem> {
  double iconYAlign = ICON_ON;
  double textYAlign = TEXT_OFF;
  double iconAlpha = ALPHA_ON;

  @override
  void initState() {
    super.initState();
    _setIconTextAlpha();
  }

  @override
  void didUpdateWidget(TabItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setIconTextAlpha();
  }

  _setIconTextAlpha() {
    print("i am here");
    print(widget.selected);
    setState(() {
      iconYAlign = (widget.selected) ? ICON_OFF : ICON_ON;
      textYAlign = (widget.selected) ? TEXT_OFF : TEXT_ON;
      iconAlpha = (widget.selected) ? ALPHA_OFF : ALPHA_ON;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: AnimatedAlign(
                duration: Duration(milliseconds: ANIM_DURATION),
                alignment: Alignment(0, textYAlign),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Text(
                  //   widget.title,
                  //   style: TextStyle(fontWeight: FontWeight.w600),
                  // ),
                )),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: AnimatedAlign(
              duration: Duration(milliseconds: ANIM_DURATION),
              curve: Curves.easeIn,
              alignment: Alignment(0, 0),
              child: IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                padding: EdgeInsets.all(0),
                alignment: Alignment(0, 0),
                iconSize: (widget.selected) ? 30.0 : 20.0,
                icon: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Icon(
                    widget.iconData,
                    color: (widget.selected)
                        ? Color(0xFF9B6348)
                        : Colors.grey[300],
                  ),
                ),
                onPressed: () {
                  widget.callbackFunction();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
