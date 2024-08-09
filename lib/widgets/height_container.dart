import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
  String heightMount;
  Function heightIncrease;
  Function heightDecrease;

  HeightContainer(
      {super.key,
      required this.heightDecrease,
      required this.heightIncrease,
      required this.heightMount});

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
             widget.heightIncrease();
            },
            icon: Icon(
              Icons.arrow_upward_rounded,
            ),
          ),
          Text(widget.heightMount),
          IconButton(
            onPressed: () {
                widget.heightDecrease();
            },
            icon: Icon(
              Icons.arrow_downward_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
