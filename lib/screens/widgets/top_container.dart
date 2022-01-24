import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final String updated;
  TopContainer(this.updated);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Covid Cases in Nepal'),
        // Text('Updated At: 2022/01/20'),
        RichText(
          text: TextSpan(
            text: 'Updated At: ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: updated,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }
}
