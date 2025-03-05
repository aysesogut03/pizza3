import 'package:flutter/material.dart';
import 'package:tasarim_calismasi5/rekler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super. key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("PİZZA",style: TextStyle(color:yaziRenk1,fontFamily:"Roboto",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Beef Cheese",style: TextStyle(fontSize: 36,color: anaRenk,fontWeight:FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("resimler/pizza.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){},
                    child: Text("Cheese",style: TextStyle(color: yaziRenk1),),
                    style:TextButton.styleFrom(backgroundColor: anaRenk),

                    ),
                TextButton(onPressed: (){},
                  child: Text("Sausage",style: TextStyle(color: yaziRenk1),),
                  style:TextButton.styleFrom(backgroundColor: anaRenk),

                ),
                TextButton(onPressed: (){},
                  child: Text("Olive",style: TextStyle(color: yaziRenk1),),
                  style:TextButton.styleFrom(backgroundColor: anaRenk),

                ),
                TextButton(onPressed: (){},
                  child: Text("Pepper",style: TextStyle(color: yaziRenk1),),
                  style:TextButton.styleFrom(backgroundColor: anaRenk),
                ),
                
                Chip(icerik:"salt")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text("28 min",style: TextStyle(fontSize: 22,color: anaRenk,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Delivery",style: TextStyle(fontSize: 22,color: yaziRenk2,fontWeight: FontWeight.bold),),
                ),
                Text("Meat lover,get ready to meet your pizza",
                  style: TextStyle(fontSize: 22,color: yaziRenk2),textAlign: TextAlign.center,),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Text("\$ 5.98",style: TextStyle(fontSize: 44,color: anaRenk,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: 200,height: 58,
                  child: TextButton(onPressed: (){},
                  child: Text("ADD TO CART",style: TextStyle(color: yaziRenk1,fontSize: 18),),
                  style:TextButton.styleFrom(
                      backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(5))),

                  ),
                  ),
                ),
     const SizedBox(height: 20),
                    ],
                  ),
          ),
    ]
    ),
    );


  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){},
    child: Text(icerik,style: TextStyle(color: yaziRenk1),),
    style:TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}
