import 'dart:io' show Platform;

import 'package:flutter/material.dart';

class NTextButton extends StatefulWidget {
  final Function onPressed;
  final String value;
  final Color color;

  NTextButton({@required this.onPressed, @required this.value, this.color});

  @override
  _NTextButtonState createState() => _NTextButtonState();
}

class _NTextButtonState extends State<NTextButton> {
  bool _held = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onPressed,
      onTapDown: (TapDownDetails details) {
        setState(() {
          _held = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          _held = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _held = false;
        });
      },
      child: AnimatedOpacity(
        opacity: _held ? .8 : 1,
        duration: Duration(milliseconds: 250),
        child: Text(
          this.widget.value,
          style: TextStyle(
              color: this.widget.color ?? Theme.of(context).accentColor),
        ),
      ),
    );
  }
}

class NRoundedButton extends StatefulWidget {
  final Function onPressed;
  final String value;
  final double width;

  NRoundedButton({@required this.onPressed, @required this.value, this.width});

  @override
  _NRoundedButtonState createState() => _NRoundedButtonState();
}

class _NRoundedButtonState extends State<NRoundedButton> {
  bool _held = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.width ?? double.infinity,
      height: 38.0,
      child: Platform.isAndroid
          ? FlatButton(
              child: Text(
                widget.value.toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Theme.of(context).accentColor,
              onPressed: this.widget.onPressed)
          : GestureDetector(
              onTap: this.widget.onPressed,
              onTapDown: (TapDownDetails details) {
                setState(() {
                  _held = true;
                });
              },
              onTapUp: (TapUpDetails details) {
                setState(() {
                  _held = false;
                });
              },
              onTapCancel: () {
                setState(() {
                  _held = false;
                });
              },
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                ),
                child: AnimatedOpacity(
                  opacity: _held ? .8 : 1,
                  duration: Duration(milliseconds: 250),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.value.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
