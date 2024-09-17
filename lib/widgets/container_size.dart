


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
    return Container(
      width: 180,
      height: 230,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xff9188f1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(10, 10),
                spreadRadius: 4,
                blurRadius: 10)
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            widget.nameData,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.mount.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 46, fontWeight: FontWeight.w800),
          ),
        SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    widget.decrease();
                  },
                  icon: Icon(Icons.remove ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  onPressed: () {
                    widget.increase();
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
