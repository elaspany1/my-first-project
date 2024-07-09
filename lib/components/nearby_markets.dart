 import 'package:flutter/material.dart';
import 'package:market/model/nearby_model.dart';

 class NearbyMarkets extends StatelessWidget {
   const NearbyMarkets({super.key});

   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: 150,
       child: ListView.builder(scrollDirection: Axis.horizontal , itemCount: marketsList.length ,
           itemBuilder: (context , index){
           return InkWell(
             onTap: (){ print('done');},
             child: Container(
               margin: const EdgeInsets.all(10),
               height: 120,
               width: 150,
               decoration: BoxDecoration(
                   color: Colors.indigo[50],
                   borderRadius: BorderRadius.circular(20)
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(100),
                     child: Image.asset(marketsList[index].imgPath, height: 80, width: 80,),
                   ),
                   Text(marketsList[index].MarketName , style:const TextStyle(fontFamily: 'Changa'),)
                 ],
               ),
             ),
           );
           }),
     );
   }
 }
