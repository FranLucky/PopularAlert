import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularAlert extends Dialog {
  String title;
  String content;
  List<Widget> actions;
  PopularAlert({Key key, this.title, this.content, this.actions}) : super(key: key);

  static const _dialogWidth = 270.0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _loadActions() {
      List<Widget> acs = List();
      for (int i = 0; i < this.actions.length; i++) {
        if (i % 2 == 1) {
          acs.add(
            Container(
              width: 1,
              height: 44,
              color: Color(0xffF0F0F3),
            ),
          );
        }
        Widget e = this.actions[i];
        acs.add(Flexible(fit: FlexFit.tight, child: e));
      }
      return acs;
    }

    var content = Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
      width: _dialogWidth,
      child: IntrinsicHeight(
        child: Column(
          children: [
            (this.title != null)
                ? Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      this.title,
                      style: TextStyle(color: Color(0xff333333), fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                : Container(),
            (this.content != null)
                ? Container(
                    margin: EdgeInsets.fromLTRB(20, 18, 20, 0),
                    child: Text(
                      this.content,
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  )
                : Container(),
            Container(
              margin: EdgeInsets.only(top: 30),
              color: Color(0xffF0F0F3),
              height: 1,
              width: double.infinity,
            ),
            (this.actions != null)
                ? Container(
                    height: 44,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: _loadActions(),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: content,
      ),
    );
  }
}
