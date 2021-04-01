import 'package:flutter/material.dart';

class ScrollableDigits extends StatefulWidget {
  const ScrollableDigits({
    Key key,
    this.height = 20.0,
    this.width = 40.0,
    this.onIncreased,
  }) : super(key: key);

  final double height;
  final double width;
  final VoidCallback onIncreased;

  @override
  ScrollableDigitsState createState() => ScrollableDigitsState();
}

class ScrollableDigitsState extends State<ScrollableDigits> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white,
    );

    return Container(
      height: widget.height * 2,
      width: widget.width,
      color: Colors.red,
      alignment: Alignment.center,
      child: Container(
        height: widget.height,
        color: Colors.yellow,
        child: ListWheelScrollView.useDelegate(
          physics: PageScrollPhysics(),
          clipBehavior: Clip.none,
          renderChildrenOutsideViewport: true,
          itemExtent: widget.height,
          onSelectedItemChanged: (value) {
            if (selectedItem == 9 && value == 0) {
              widget.onIncreased();
            }

            selectedItem = value;
          },
          childDelegate: ListWheelChildLoopingListDelegate(
            children: [
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '0',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '1',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '2',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '3',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '4',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '5',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '6',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '7',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '8',
                  style: textStyle,
                ),
              ),
              Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  '9',
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
