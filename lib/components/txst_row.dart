import 'package:flutter/material.dart';
class TextstRow extends StatelessWidget {
  const TextstRow({super.key , required this.showAll , required this.name });
  final String name;
  final String showAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){print('ok');}, child: Text(showAll , style: const TextStyle(fontSize: 17),)),
        Text(name , style: const TextStyle( fontWeight: FontWeight.bold , fontSize: 20 , fontFamily: 'Changa'),),
      ],
    );
  }
}
