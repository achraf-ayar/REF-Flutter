import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedShapePainter extends CustomPainter {
  double radius = 50;
  double radians;
  Color color;

  AnimatedShapePainter({
    required this.radius,
    required this.radians,
    this.color = Colors.yellow,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double xc = size.width / 2;
    double yc = size.height / 2;

    double xc2 = xc + 2 * radius * cos(radians);
    double yc2 = yc + 2 * radius * sin(radians);

    final paint = 
    Paint()
    ..color = Colors.deepOrange
    ..strokeWidth = 6
    ..style = PaintingStyle.fill;

    final paint2 = 
    Paint()
    ..color = Colors.deepOrange
    ..strokeWidth = 2
    ..style = PaintingStyle.fill;

    final paint3 = 
    Paint()
    ..color = color
    ..strokeWidth = 6
    ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(xc, yc), radius * 2, paint);
    canvas.drawCircle(Offset(xc2, yc2), radius + 2, paint2);
    canvas.drawCircle(Offset(xc2, yc2), radius, paint3);
    final double xp = xc2 + radius * cos(radians * 3);
    final double yp = yc2 + radius * sin(radians * 3);
    canvas.drawCircle(Offset(xc2, yc2), 5, paint2);
    canvas.drawCircle(Offset(xp, yp), 10, paint2);
    canvas.drawLine(Offset(xc2, yc2), Offset(xp, yp), paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AnimatedGraphicsPage extends StatefulWidget {
  const AnimatedGraphicsPage({super.key});

  @override
  State<AnimatedGraphicsPage> createState() => _AnimatedGraphicsPageState();
}

class _AnimatedGraphicsPageState extends State<AnimatedGraphicsPage>
    with TickerProviderStateMixin {
  double radius = 50.0;
  double radians = pi;

  late Animation<double> animation;
  late AnimationController animationController;
  late bool animationStopped = true;
  late Icon iconStatus = Icon(Icons.play_arrow);

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    Tween<double> tween = Tween(begin: -pi, end: pi);

    animation = tween.animate(animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.repeat();
        } else if (status == AnimationStatus.dismissed)
          animationController.stop();
      });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Graphics Page 2")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text("Rayon"),
          Slider(
            value: radius,
            min: 30,
            max: 100,
            onChanged: (value) {
              setState(() {
                radius = value;
              });
            },
          ),
          Text("Angle de rotation"),
          Slider(
            value: radians,
            min: -4 * pi,
            max: 4 * pi,
            onChanged: (value) {
              setState(() {
                radians = value;
              });
            },
          ),
          Expanded(child: CustomPaint(
    painter: AnimatedShapePainter(radius: radius, radians: radians),
  ))
        ],
      ),
      
    );
  }

}
