import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hope_application/core/constant/Color.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.index, required this.txt});
  final int index;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: AppColor.white, boxShadow: [
        BoxShadow(
          color: AppColor.Shadow,
          offset: Offset(0, 1),
          blurRadius: 4,
        )
      ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: AppColor.primary,
              height: 20,
              width: 40,
              child: Center(
                  child: Text(
                "Q:$index",
                style: TextStyle(color: AppColor.gry),
              )),
            ),
          ),
          Expanded(
            child: Text(
              txt,
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
