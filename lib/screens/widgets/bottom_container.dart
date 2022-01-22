import 'package:covid_nepal/constants.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  Text getText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: darkYellow,
        fontSize: 18,
      ),
    );
  }

  Row getData({required String label, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [getText(label), getText(data)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lightYellow,
            boxShadow: const [
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
            const Divider(
              thickness: 1,
            ),
            getData(label: "Isolation", data: '123879'),
            const Divider(
              thickness: 1,
            ),
            getData(label: "Quarantined", data: '123879'),
          ],
        ));
  }
}
