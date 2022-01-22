import 'package:covid_nepal/constants.dart';
import 'package:flutter/material.dart';

class DataTile extends StatelessWidget {
  const DataTile({
    required this.backgroundColor,
    required this.data,
    required this.name,
    required this.icon,
    required this.textColor,
  });
  final String name;
  final int data;
  final IconData icon;
  final Color textColor;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                offset: const Offset(0, 2),
                spreadRadius: 1,
                color: Colors.grey.shade400)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                '$data',
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
