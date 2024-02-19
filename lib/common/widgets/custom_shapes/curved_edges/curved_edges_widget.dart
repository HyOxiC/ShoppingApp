import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TestCurvedEdges extends StatelessWidget {
  const TestCurvedEdges({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TestCustomCurvedEdges(),
      child: child,
    );
  }
}