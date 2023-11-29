import 'package:flutter/material.dart';


class BootstrapContainer extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final double? fluidMaxWidth;

  BootstrapContainer({
    required this.child,
    this.maxWidth = double.infinity,
    this.fluidMaxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: getMaxWidth(context),
        child: child,
      ),
    );
  }

  double getMaxWidth(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 576) {
      // Extra small screens (phones) - container
      return fluidMaxWidth ?? screenWidth;
    } else if (screenWidth < 768) {
      // Small screens - container-sm
      return fluidMaxWidth ?? 540.0;
    } else if (screenWidth < 992) {
      // Medium screens - container-md
      return fluidMaxWidth ?? 720.0;
    } else if (screenWidth < 1200) {
      // Large screens - container-lg
      return fluidMaxWidth ?? 960.0;
    } else if (screenWidth < 1400) {
      // Extra large screens - container-xl
      return fluidMaxWidth ?? 1140.0;
    } else {
      // Extra extra large screens - container-xxl
      return fluidMaxWidth ?? 1320.0;
    }
  }
}