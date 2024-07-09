
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

 class Advertisements extends StatelessWidget {
   const Advertisements({super.key});

   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: 200,
       child: Swiper(itemCount: 3 ,
           autoplay: true,
           controller: SwiperController(),
           loop: true,
           pagination: const SwiperPagination(),
           scrollDirection: Axis.horizontal,
           itemBuilder: (context , index) {
             return Container(
               margin: const EdgeInsets.all(10),
               height: 150, width: 150,
               decoration: BoxDecoration(
                   color: Colors.indigo[50],
                   borderRadius: BorderRadius.circular(20)
               ),
               child: Stack(

                 children: [
                   Positioned( left: 20 , top: 20 ,
                       child: Image.asset('img/bag.png' , height: 100, width: 100, )
                   ),
                   const Positioned( right: 20, top: 30 ,child: Column(
                     children: [
                       Text('تمتع بخصم' , style: TextStyle(fontSize: 20 , fontFamily: 'Changa'),),
                       Text('20 %', style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold)),
                       Text('مجموعه متنوعه من المنتجات', style: TextStyle(fontSize: 15 , fontFamily: 'Changa' ),)

                     ],
                   ))
                 ],
               ),
             );
           } ),
     );
   }
 }
