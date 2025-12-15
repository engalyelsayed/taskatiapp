import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String clabel;
  final double cwidth;
  final double cheight;
  final double craduis;
  final Color ccolor;
  final Color labelcolor;
  final void Function()? ontab;
  final double labelfont;
  const MyCustomButton({super.key, 
  required this.clabel,
   required this.cwidth,
   required this.labelfont,
   required this.cheight,
    required this.craduis,required this.ontab,
    required this.ccolor, required this.labelcolor});
    
  // ignore: empty_constructor_bodies
     @override
  Widget build(BuildContext context) {
    return InkWell(onTap:ontab,
      child:  Center(
        child: Container(
           
          width: cwidth,
          height: cheight,
          decoration: BoxDecoration(
            color: ccolor,
            borderRadius:BorderRadius.circular(craduis)
          ),
          child: Center(
            child: Text(clabel,style: TextStyle(
              color: labelcolor,fontSize: labelfont)
            ),
          ),),
      ),
      
        
      );
    
  }
}