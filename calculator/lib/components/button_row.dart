import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.buttons});
  final List<Button> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list,b){
          list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]);
          return list; 
        }),
      ),
    );
  }
}
