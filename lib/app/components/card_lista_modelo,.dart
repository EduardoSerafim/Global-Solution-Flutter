 import 'package:flutter/material.dart';

class CardListaModelo extends StatelessWidget{
 
 final String upperText;
  final String bottomText;

  CardListaModelo({required this.upperText, required this.bottomText });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        decoration:const BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
        
        child: Column(
          children: [
            Text(upperText, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 1),
            Text(bottomText, style: const TextStyle(fontSize: 20))
          ],
        )    
    );
  }

}