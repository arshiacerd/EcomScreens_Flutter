

import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart';
class EcomApp extends StatefulWidget {
  @override
  _EcomAppState createState() => _EcomAppState();
}

class _EcomAppState extends State<EcomApp> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        
        backgroundColor: Colors.white,
        
        
        title: Text("Ecom App UI",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20),),
       actions: [
         IconButton(icon: Icon(Icons.notifications), 
         onPressed: (){},
         color: Colors.black,
         )
       ],
      
      ),
      
      body:SingleChildScrollView(
      child:ConstrainedBox(
          constraints:BoxConstraints(),
     child:  Column(
        
        children: [
            data("Iphone 12",'mobile1.jpg'),
            data("Note 20 Ultra",'mobile2.jpg'),
            data("Macbook Air",'mackbook.jpg'),
             data("Macbook pro",'macbookPro.jpg'),
             data("Gaming PC",'gamingPc.jpg'),
             
        ],),)));}}
Widget data (name,image){
   
  return Container(
   
   child: Card(
     
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
       
        child: Row(
          
          children: [
            
          Container(
	padding: EdgeInsets.zero,

             width: 130,
                height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),

              child: Image(
                image: AssetImage('$image'),
                fit: BoxFit.cover,
               
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: EdgeInsets.only(left: 20),
            child:RichText(

              text: TextSpan(
              text:"$name\n",
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black,height: 2),
              
              children: [
                TextSpan(
                  
                  text: "${Emojis.star}",
                  style: TextStyle(color: Colors.yellow)
                ),
               
                TextSpan(
                  text: "5.0 (23 Review)\n",
                  style: TextStyle(color: Colors.grey,height: 2,),
                ),
                TextSpan(
                  text: "20 Pieces  ",
                  style: TextStyle(color: Colors.grey,height: 2),
                ),
                TextSpan(
                  text: r"$90",
                  style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold,),
                  
                ),
                TextSpan(
                  text: "\nQuantity: 1",
                  style: TextStyle(color: Colors.grey,height: 2),
                )
              ]
              )
              )
            ) 
              
            
          ),
        ]))
  );

    
      

    
}