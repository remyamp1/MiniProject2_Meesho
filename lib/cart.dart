import 'package:flutter/material.dart';

class Cartexample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(
        "CART",style: TextStyle(fontSize: 25),
      ),),
      body:
       Column(
         children: [
           Container(
            height: 150,
            width: double.infinity,
               color: const Color.fromARGB(255, 238, 228, 228),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(
                        "assets/images/ph2.jpeg"
                      ),fit: BoxFit.cover)
                    ),
                  ),
                ),
                
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
               children: [
                 Text("Party Wear Long Cut Kurti",style: TextStyle(fontSize: 15),),
               ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 Icon(Icons.currency_rupee),
                 Text("600",style: TextStyle(fontSize: 15),),    Text("  9% off",style: TextStyle(color: const Color.fromARGB(255, 110, 108, 108)),)
               
               ],
             ),
             Row(
              children: [
                Text("All issue easy returns",style: TextStyle(color: const Color.fromARGB(255, 204, 202, 202)),)
              ],
             ),
           
              Row(
              children: [
                Text("Size:32",style: TextStyle(color: const Color.fromARGB(255, 204, 202, 202)),)
              ],
             ),
             SizedBox(height: 10),
              Row(
              children: [
                Icon(Icons.delete),
                Text("Remove",style: TextStyle(color: const Color.fromARGB(255, 204, 202, 202)),)
              ],
             ),
                ],
               ),
           
              
               
                
              ],
            ),
            
            
                 
                 ),
SizedBox(height: 10,),
                 Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 248, 246, 247),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price Details (1 item)",style: TextStyle(fontSize: 15),),

                      SizedBox(height: 5,),
                      Text("Total Product Price")
                    ],
                  ),

                    
                                 
                 ),
                 Text("________________________________________________"),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Text("Order Total"),
                  
                 Spacer(),
                 Icon(Icons.currency_rupee),
                 Text("600"),
                   ]
                 ),
                 
                SizedBox(height: 40,),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Icons.currency_rupee),
                      Text("600"),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)
                        ,color: const Color.fromARGB(255, 245, 85, 138),),
                        child: Text("Continue",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                )
         ],
       ),
      
      


      
      
        
        
        
        
    );
  }
}