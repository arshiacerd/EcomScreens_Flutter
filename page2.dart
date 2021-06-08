import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emojis/emojis.dart';
//import 'package:emojis/emojis.dart';
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
  child:ConstrainedBox(constraints: BoxConstraints(),

child: Center(

child: Column(
  children: [
    SizedBox(height: 10,),
    Container(
      margin: EdgeInsets.all(10),
      width:400,
       decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child:Row(
        
        children: [
          Expanded(
            
    child:  TextField(
      autofocus: true,
      decoration: InputDecoration(hintText: "Username",
      contentPadding: EdgeInsets.only(left: 10),
      hintStyle:TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.bold,
      
      ),
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
       ),
      ),),
      Padding(
      padding:EdgeInsets.only(right: 10) ,
        
        child: Icon(Icons.search,size: 25,),
      )

      ] ) ),
      SizedBox(height: 8,),
     Container(
       
       margin: EdgeInsets.only(left: 18),
 child:    Align( 
       alignment: Alignment.centerLeft,
   child: Text("History",style: GoogleFonts.roboto(fontSize: 16)),
     )  ),
     SizedBox(height: 15,),
     
     cart("Iphone 12",'mobile1.jpg'),
            cart("Note 20 Ultra",'mobile2.jpg'),
            cart("Macbook Air",'mackbook.jpg'),
             cart("Macbook pro",'macbookPro.jpg'),
             cart("Gaming PC",'gamingPc.jpg'),
           cart("Backlit Keyboard",'keyborad.jpg'),
            cart("Mercedes",'mercedes.jpg'),
             cart("Mutton",'mutton.jpg'),
             cart("Roadster",'roadster.jpg'),
              cart("Royal Field",'royal.jpg'),
           
  ],
 )
))
    ));
  }
}
Widget cart(data,image){
  return  ListTile(
       leading: CircleAvatar(
         backgroundImage: AssetImage('$image'),
         ),
         title: Text("$data",
         style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black,height: 2),
         ),
         subtitle: Text("${Emojis.star} 5.0 (23 Review)",style: TextStyle(color: Colors.blueGrey),),
         trailing: Text(r"$10",style: TextStyle(color: Colors.black),),
         );
    
}
