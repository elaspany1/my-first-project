import 'package:flutter/material.dart';
import '../model/latest_model.dart';
import 'favourite_bt.dart';
class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 250,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: offersList.length,
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
                  Positioned(right: 50, top: 20,child: Image.asset(offersList[index].imgPath , height: 110, width: 110,) ,
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
                      child: Text(offersList[index].name , style: const TextStyle( fontWeight: FontWeight.bold , fontFamily: 'Changa'),)),
                  Positioned(
                    bottom: 45, left: 10,
                    child: Text(offersList[index].price, style: const TextStyle( fontWeight: FontWeight.bold , fontFamily: 'Changa'),),),
                  Positioned(
                    bottom: 45, right: 10,
                    child: Text(offersList[index].section , style:const TextStyle(fontFamily: 'Changa'),),
                  ),
                  Positioned(
                      left: 0, top: 0,
                      child: Image.asset('img/discount.png' , height: 60, width: 60,)),
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
                              Icon(Icons.shopping_basket_outlined , color: Colors.white,),
                              Text('أضف الي السل’' , style: TextStyle(color: Colors.white , fontFamily: 'Changa'),)
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
