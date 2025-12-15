import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati/widgets/custom_button.dart';

class AuthScreen extends StatefulWidget {
   const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  XFile? photo;
  final ImagePicker picker =ImagePicker();
  void pickPictureFromCamera()async{
    photo=await picker.pickImage(source:ImageSource.camera);
    setState(() {
      
    });
  }
void pickPictureFromGallery()async{
  photo=await picker.pickImage(source:ImageSource.gallery);
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [const SizedBox(height: 100,),
              CircleAvatar(radius:125,
                backgroundImage:(photo==null)? AssetImage("assets/images/farees.png"):
                Image.file(File(photo?.path?? "")).image),
              
              const SizedBox(height: 20,),
             MyCustomButton(clabel: "Upload from Camera",
              cwidth: 300, labelfont: 22, cheight: 65, 
              craduis: 15, ontab:pickPictureFromCamera, 
              ccolor: Colors.deepPurpleAccent,
               labelcolor: Colors.white),
             SizedBox(height: 15,),
              MyCustomButton(clabel: "Upload from Gallery", 
              cwidth: 300, labelfont: 22, cheight: 65, craduis: 15, ontab:pickPictureFromGallery, ccolor: Colors.deepPurpleAccent, labelcolor: Colors.white),
              Divider(height: 50,
              
                indent: 20,
                endIndent: 20,
                thickness: 2.5,
                color: Colors.blueGrey,
              )
              ,SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo,width: 2,
        
                  )
                    
                  ),
                  hint:Text("Write you name here")
                ),
              ),
              SizedBox(height: 20,),
        
               MyCustomButton(clabel: "Submit", cwidth: 150, labelfont: 22, cheight: 60, craduis: 15, ontab: (){}, ccolor: Colors.deepPurpleAccent, labelcolor: Colors.white)
            ],
          ),
        ),
      )
    );
  }
}