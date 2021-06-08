
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    
    SizedBox(height: 20,),
      Row(
      children: [
        Expanded(
     child:   Image(image: AssetImage('person-1824144_1280.png'),
        width:150,
        height: 120,
        ),),
        Flexible(  
      child:  Column(
        children: [
          ListTile(
          title: Text("User",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          subtitle: Text("abc@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(height: 15,),
          Align(
            alignment: Alignment.topLeft,
            child:Padding(
              padding: EdgeInsets.only(left: 17),
         child: Text("logout",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),)
          ),
          ] 

        )),
      ],
    ),
    SizedBox(height: 30,),
    Container(
     margin: EdgeInsets.only(left:45),   
   child: Text("Account information".toUpperCase(),
   style:GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 17) ,),
    ),
    
    Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Full Name',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "User",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    
      ),
      
      
    )),
     Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Email ',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "user@gmail.com",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
       
      ),
      
    )),
     Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Phone',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "+900",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
       
      ),
      
    )),
     Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Address',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "New York",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
       
      ),
      
    )),
     Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Gender',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "Male",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
       
      ),
      
    )),
     Container(
margin:EdgeInsets.only(left:45), 
   child: TextField(
      
      decoration: InputDecoration(
        labelText: 'Date of Birth',
        labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),
        hintText: "October 13, 199",hintStyle: TextStyle(color: Colors.blueGrey),
        errorBorder:InputBorder.none,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
       
      ),
      
    )),
    ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EcomApp()));
    }, 
    
    child: Text("Login"))
  ],
),     
      
     
     
     
      );
  }
}