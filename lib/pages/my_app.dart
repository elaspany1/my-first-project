import 'package:flutter/material.dart';
import 'package:market/components/advertisements.dart';
import 'package:market/components/latest.dart';
import 'package:market/components/offers.dart';
import 'package:market/components/sections.dart';
import 'package:market/components/txst_row.dart';
import 'package:market/components/txt_form_field.dart';
import '../components/bottom_bar.dart';
import '../components/nearby_markets.dart';

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.white,
         onPressed: (){print('yes');},
         child: const Icon(Icons.shopping_cart_outlined , color: Colors.deepPurple,),
       ),
      bottomNavigationBar: const BottomBar(),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       body: ListView(

         padding: const EdgeInsets.only(top: 40 , right: 15, left: 15),
         children: const [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Icon(Icons.shopping_bag_outlined),
               Text('الرئيسية' , style: TextStyle(fontFamily: 'Changa' , fontSize: 20 , color: Colors.deepPurple),),
               Icon(Icons.notification_important_outlined),
             ],
           ),
           TxtFormField(),
           Advertisements(),
           TextstRow(name: 'الاقسام', showAll: 'عرض الكل'),
          Sections(),
           TextstRow(name: 'أحدث المنتجات', showAll: 'عرض الكل'),

           Latest(),
           TextstRow(name: 'المتاجر القريبه منك', showAll: 'عرض الكل'),

           NearbyMarkets(),
           TextstRow(name: 'عروض مميزه', showAll: 'عرض الكل'),

           Offers()
         ],
       ),
     );
   }
 }
