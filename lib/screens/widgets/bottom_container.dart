import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  Text getText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xffe3b891),
      ),
    );
  }

  Row getData({required String label, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(data),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffe3b891),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                color: Colors.grey,
                offset: Offset(0, 2),
              )
            ]),
        child: Column(
          children: [
            getData(label: "PCR test", data: '123879'),
            Divider(
              thickness: 1,
            ),
            getData(label: "Isolation", data: '123879'),
            Divider(
              thickness: 1,
            ),
            getData(label: "Quarantined", data: '123879'),
          ],
        ));
  }
}
