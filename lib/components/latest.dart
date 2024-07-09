 import 'package:flutter/material.dart';
import 'package:market/components/favourite_bt.dart';
import 'package:market/model/latest_model.dart';
  class Latest extends StatelessWidget {
    const Latest({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(

        height: 250,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: latestList.length,
            itemBuilder: ( context , index){
              return Container(
                margin: const EdgeInsets.all(10),
              width: 200,

                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  children: [
                    Positioned(right: 50, top: 20,child: Image.asset(latestList[index].imgPath , height: 120, width: 120,) ,
                    ),
                    Positioned(
                      right: 10, top: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: FavouriteBt(index: index,),
                        ),),
                    Positioned( right: 10, bottom: 70,
                        child: Text(latestList[index].name , style: const TextStyle( fontWeight: FontWeight.bold ,fontFamily: 'Changa'),)),
                    Positioned(
                        bottom: 45, left: 10,
                        child: Text(latestList[index].price, style: const TextStyle( fontWeight: FontWeight.bold , fontFamily: 'Changa'),),),
                    Positioned(
                      bottom: 45, right: 10,
                      child: Text(latestList[index].section , style:const TextStyle(fontFamily: 'Changa'),),
                    ),
                    Positioned(
                        bottom: 1,
                        child: InkWell(

                          onTap: (){print('done');},
                          child: Container(
                            height: 30,
                            width: 180,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                          color: Colors.purple[700],
                          borderRadius: BorderRadius.circular(20)
                                                ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.shopping_basket_outlined , color: Colors.white),
                                Text('أضف الي السلة' , style: TextStyle(color: Colors.white , fontFamily: 'Changa'),)
                              ],
                            ),
                                              ),
                        ))
                  ],
                ),
              );
            }),
      );
    }
  }
