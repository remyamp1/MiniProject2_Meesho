import 'package:flutter/material.dart';
import 'package:meesho/cart.dart';

class Example extends StatelessWidget {
  final String imagepath;
  final String name;
  final String price;

  Example ({required this.imagepath,required this.name,required this.price});
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imagepath),
            fit: BoxFit.cover)),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),
          Row(
            children: [
              Text(name,style: TextStyle(fontSize: 20),),
            ]),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.currency_rupee),
                  Text(price,style: TextStyle(fontSize: 15),),
                  Spacer(),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: const Color.fromARGB(255, 175, 173, 173),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Text('''Style is a way to say who you are without having to speak try trendy naira cut blue full sleeves kurti in georgette with floral prints on it.''',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,),
                ],
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartexample()));
                  },child: 
                  Text("Add to Cart",style: TextStyle(fontSize: 15,
                  color: Colors.pink),),),
                  Spacer(),
                  ElevatedButton(onPressed: (){},child: Text(
                    "Buy Now"
                  ))
                  
                ],
              )
    
            ],
          ),
          
        
      
    );
  }
}