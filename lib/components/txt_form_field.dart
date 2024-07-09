 import 'package:flutter/material.dart';
 class TxtFormField extends StatelessWidget {
   const TxtFormField({super.key});

   @override
   Widget build(BuildContext context) {
     return  Container(
       height: 40,
       margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),

       child: TextFormField(

         decoration: InputDecoration(
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
               borderSide: BorderSide.none,
             ),
             filled: true,
             fillColor: Colors.indigo[50],
             hintText: 'بحث عن منتج' ,
             hintStyle: const TextStyle(fontFamily: 'Changa'),
             prefixIcon: const Icon(Icons.search_sharp),
             icon: Container(
               padding: const EdgeInsets.all(10),
               decoration: BoxDecoration(
                   color: Colors.indigo[50],
                   borderRadius: BorderRadius.circular(100)
               ),
               child: Icon(Icons.settings_input_composite_rounded , color: Colors.purple[300],),
             )
         ),
       ),
     );
   }
 }
