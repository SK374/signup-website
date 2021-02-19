import 'package:flutter/material.dart';
import '../constants/export.dart';

class AnimatedProgressIndicator extends StatefulWidget {
  final double value;
  AnimatedProgressIndicator({@required this.value});

  @override
  _AnimatedProgressIndicatorState createState() =>
      _AnimatedProgressIndicatorState();
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Color> _colorAnimation;
  Animation<double> _curveAnimation;

  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: Sizes.durMillSec), vsync: this);

    var colorTween = TweenSequence([
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.red, end: Colors.orange),
        weight: Sizes.tweenWgt,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orange, end: Colors.yellow),
        weight: Sizes.tweenWgt,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.yellow, end: primaryColor),
        weight: Sizes.tweenWgt,
      ),
    ]);
    _colorAnimation = _controller.drive(colorTween);
    _curveAnimation = _controller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.animateTo(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => LinearProgressIndicator(
              value: _curveAnimation.value,
              valueColor: _colorAnimation,
              backgroundColor:
                  _colorAnimation.value.withOpacity(Sizes.animOpacity),
            ));
  }
}