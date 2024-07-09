import 'package:flutter/material.dart';
import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';
class BottomBar extends StatefulWidget {
   const BottomBar({super.key});
   @override
   State<BottomBar> createState() => _BottomBarState();
 }

 class _BottomBarState extends State<BottomBar> {
   ScrollController controller = ScrollController();

  List <BottomNavigationBarItem> list = [
    const BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: 'الرئيسيه' ),
    const BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded ), label: 'طلباتي'),
    const BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded), label: 'المفضله'),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'حسابي')];
   int i =0;
   @override
   Widget build(BuildContext context) {
     return  ScrollBottomNavigationBar(

       controller: controller,
       items: list,
       currentIndex: i,
       iconSize: 15,
        unselectedItemColor: Colors.grey,
       unselectedLabelStyle: const TextStyle(color: Colors.black,),
       showSelectedLabels: true,
       showUnselectedLabels: true,
       onTap: (v){
       setState(() {
         i = v;
       });
       },
       
      ) ;
   }
 }
