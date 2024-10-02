import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meesho/Descreption.dart';
import 'package:meesho/database.dart';
class Demo extends StatelessWidget{
   final List<String> Imagesurls =[
      "assets/images/cs1.jpeg",
      "assets/images/cs2.jpeg",
      "assets/images/ph3.jpg",
      "assets/images/ph6.jpg"
        
      ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
 body: Column(
        children: [
         Row(
          children: [
            CircleAvatar(
              radius: 20,child: Icon(Icons.person),
            ),
            Text("Remya Premnavas",style: TextStyle(fontSize: 15),),
            Spacer(),
            Icon(Icons.favorite,color: Colors.red,),
            Icon(Icons.notifications,color: Colors.yellow,),
            Icon(Icons.shopping_cart),
          
          ],
         ),
          Row(
           children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 181, 204, 212)),
                child: Text("0 Coins"),
              ),
            )
           ],
         ),
         SizedBox(height: 10),
         Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          border: Border.all()),
          child: Row(
            children: [
              Icon(Icons.search),
              Text("Search by Keyword or Product ID"),
              Spacer(),
              Icon(Icons.video_call),
              Icon(Icons.camera_alt_sharp)
            ],
          ),
          
         ),
         SizedBox(height: 10,),

         Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              aspectRatio: 6/9,
              autoPlayCurve: Curves.fastOutSlowIn,
             autoPlayAnimationDuration: Duration(microseconds: 800),
              viewportFraction: 0.8
            ),
            items: Imagesurls.map((imageurl){
              return Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.pink),
                child: Image.asset(imageurl,fit: BoxFit.cover
                ),

              );

            }).toList(),
            ),
        ],
      ),
SizedBox(height: 20),
      Expanded(
        child:GridView.builder(gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 15,
      childAspectRatio: 6,
      crossAxisSpacing: 15
      ),itemCount: 6,
       itemBuilder: (context,index){
        return Container(
          height: 500,
          width:600,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 252, 249, 250)),
          child: 
          
            
              Column(
                
                children: [
         
                  Container(
                    
          height: 150,
        width: 150, 
      
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage
      (Database.MyList[index]["image"]),
        fit: BoxFit.cover,),),
        child:   GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Example(
                imagepath:Database.MyList[index]["image"]
              , name: Database.MyList[index]["name"], price: Database.MyList[index]["price"])));
            },
          
          
                          
          ),
          
                         
                         ),
                         SizedBox(height: 5,),
          
                             Text(Database.MyList[index]["name"]),
                             
                           
                         SizedBox(height: 5,),
                
                            Icon(Icons.currency_rupee),
                             Text(Database.MyList[index]["price"]),
                             
                           
                         SizedBox(height: 5,),
                         Row(
                           children: [
                             Text(Database.MyList[index]["descrption"]),
                             
                           ],
                         ),
                    
                ],
              ),
          
        );
      
         
        
       }))
     



        ]
 ),
 bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  items: [BottomNavigationBarItem(icon: Icon(Icons.home,
  color: const Color.fromARGB(255, 155, 31, 107),),label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.category,),label: "Categories"),
   BottomNavigationBarItem(icon: Icon(Icons.menu,),label: "Mall"),
   BottomNavigationBarItem(icon: Icon(Icons.play_circle,),label: "Reelz"),
   BottomNavigationBarItem(icon: Icon(Icons.gif_box_sharp, ),label: "My order"),

 ]),

    );
  }
}
