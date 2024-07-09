 import 'package:flutter/material.dart';
import 'package:market/model/latest_model.dart';
 class FavouriteBt extends StatefulWidget {
   const FavouriteBt({super.key , required this.index});
   final int index;
   @override
   State<FavouriteBt> createState() => _FavouriteBtState();
 }

 class _FavouriteBtState extends State<FavouriteBt> {
   List<bool> isFavourite = latestList.map((fav) =>fav.favourites).toList();
   @override
   Widget build(BuildContext context) {
     return IconButton(onPressed: (){
       setState(() {
         isFavourite[widget.index] = !isFavourite[widget.index];
       });
     },

         icon: isFavourite[widget.index] == false ? const Icon(Icons.favorite_border_rounded ) : const Icon(Icons.favorite , color: Colors.red,));
   }
 }
