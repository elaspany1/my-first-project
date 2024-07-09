 import 'package:flutter/material.dart';
import 'package:market/model/sections_model.dart';

 class Sections extends StatelessWidget {
   const Sections({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Wrap(
       spacing: 15,
       alignment: WrapAlignment.center,
       children: [
         for (SectionsModel section in allSections)
           InkWell(

             child: Column(
               children: [
                 Container(
                   margin: const EdgeInsets.only(bottom: 10 , top: 10),
                   height: 75,
                   width: 75,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage( fit: BoxFit.fill ,image: AssetImage(section.imgPath )  , )
                   ),),
                 Text(section.sectionName , style:const TextStyle(fontFamily: 'Changa'),)
               ],
             ),
           )
       ],
     );
   }
 }
 