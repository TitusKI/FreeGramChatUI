import "package:flutter/material.dart";
import "package:freegram/src/screens/home_screen.dart";

void main(){
    runApp(App());
}
class App extends StatelessWidget{
  const App({super.key});

  @override
    Widget build(BuildContext context){
        return MaterialApp(
        
          debugShowCheckedModeBanner: false,
            title: "FlutterChatApp",
            theme: ThemeData(
                primaryColor:Colors.red ,
                highlightColor:const Color(0xFFFEF9EB),
                // 
            ),
            home: const HomeScreen()
        );
    }
}