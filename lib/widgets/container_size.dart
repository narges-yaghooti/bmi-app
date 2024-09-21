


import 'package:flutter/material.dart';

class ContainerSize extends StatefulWidget {
  String nameData;
  String mount;
  Function increase;
  Function decrease;

  ContainerSize(
      {super.key,
      required this.nameData,
      required this.mount,
      required this.decrease,
      required this.increase});

  @override
  State<ContainerSize> createState() => _ContainerSizeState();
}

class _ContainerSizeState extends State<ContainerSize> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  offset: const Offset(10, 10),
                  spreadRadius: 4,
                  blurRadius: 10)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.nameData,
              style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xff9188f1),
                  fontWeight: FontWeight.bold),
            ),

            Text(
              widget.mount.toString(),
              style: TextStyle(
                  color: const Color(0xff9188f1),
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff9188f1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      widget.decrease();
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff9188f1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {
                      widget.increase();
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
