import 'package:flutter/material.dart';
import 'paint_classes.dart';

class Tab1 extends StatefulWidget {

  @override
  State<Tab1> createState()=> _Tab1State();
}

class _Tab1State extends State<Tab1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        color: Colors.white,
        // Inner yellow container
        child: LayoutBuilder(
          // Inner yellow container
          builder: (_, constraints) =>
              Container(
                width: constraints
                    .widthConstraints()
                    .maxWidth,
                height: constraints
                    .heightConstraints()
                    .maxHeight,
                color: Colors.yellow,
                child: CustomPaint(painter: FaceOutlinePainter()),
              ),
        ),
      ),
    );
  }
}