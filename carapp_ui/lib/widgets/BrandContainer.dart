import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';

class BrandContainer extends StatelessWidget {
   final   String label;
    final  String? assetPath;
  const BrandContainer({super.key, required this.label, this.assetPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 40,
        width: label == "All" ? 40 : 120,
        decoration: BoxDecoration(
          color: fillcolor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (assetPath != null)
                Image.asset(
                  assetPath!,
                  width: 30,
                  height: 30,
                ),
              if (assetPath != null) Gap(5),
              Text(
                label,
                style: TextStyle(color: gray, fontSize: 15, letterSpacing: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

