import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class OfficialServiceCard extends StatelessWidget {
  const OfficialServiceCard({super.key});

  Color get borderColor => Colors.transparent;

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      child: LayoutBuilder(builder: layoutBuild),
    );
  }

  Widget layoutBuild(BuildContext context, BoxConstraints constraint);
}
