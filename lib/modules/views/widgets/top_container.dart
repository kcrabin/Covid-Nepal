import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopContainer extends StatelessWidget {
  final String updated;
  TopContainer(this.updated);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Covid Cases in Nepal',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Text('Updated At: 2022/01/20'),
        RichText(
          text: TextSpan(
            text: 'Updated At: ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: '${DateFormat('y/M/d , H:m').format(DateTime.now())}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }
}
