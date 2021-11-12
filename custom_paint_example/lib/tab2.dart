import 'package:flutter/material.dart';
import 'paint_classes.dart';

class Tab2 extends StatefulWidget {

  @override
  State<Tab2> createState()=> _Tab2State();
}

class _Tab2State extends State<Tab2> {

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
                color: Colors.purple,
                child:CustomPaint(
                  painter: Sky(),
                  child: const Center(
                    child: Text(
                      'Once upon a time...',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                )
              ),
        ),
      ),
    );
  }
}


class Tab3 extends StatefulWidget {

  @override
  State<Tab3> createState()=> _Tab3State();
}

class _Tab3State extends State<Tab3> {

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
                color: Colors.green,
                child: CustomPaint(painter: Spiral()),
              ),
        ),
      ),
    );
  }
}