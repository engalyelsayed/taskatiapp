import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati/screens/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
void nextscreen(){
  Future.delayed(const Duration(seconds: 3),(){
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context)=> AuthScreen()));
  }); 
}



  @override
  void initState() {
nextscreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [SizedBox(height: 100,),
            Lottie.asset("assets/images/splach_icon.json",
            height: 500,width: 400,fit: BoxFit.fill),
            SizedBox(height: 20,),
            Text("Taskati",style: TextStyle(color:Colors.indigo,fontSize: 22),),
            SizedBox(height: 10,),
            Text("Your Task Manager App",style: TextStyle(color:Colors.indigo,fontSize: 16),),
          ],
        ),
      ),
    );
  }
}

  
