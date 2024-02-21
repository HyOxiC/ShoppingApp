import 'package:flutter/material.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_project_trial/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_project_trial/utilities/constants/colors.dart';
import 'package:flutter_project_trial/utilities/constants/sizes.dart';

class TestPrimaryHeaderContainer extends StatelessWidget {
  const TestPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TestCurvedEdges(
      child: Container(
        height: 320,
        color: TestColors.primaryColor,
        padding: const EdgeInsets.only(bottom: 0),
        // if error chhance size isfinite is notr true i  stack or something
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TestCircularContainer(
                    backgroundColor: TestColors.white.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TestCircularContainer(
                    backgroundColor: TestColors.white.withOpacity(0.1),
                  )),
              Padding(
                padding: const EdgeInsets.all( TestSizes.s),
                child: Positioned(top: 0, left: 0, child: child),
              )
            ],
          ),
        ),
      ),
    );
  }
}
