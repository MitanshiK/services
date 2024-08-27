import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:services/back_services.dart';
import 'package:services/home_screen.dart';
import 'package:services/photo_hero_animation/hero_anim.dart';
import 'package:services/work_manager_screen.dart';
import 'package:workmanager/workmanager.dart';

/*
work manager
 const task="FirstTask";
 void callBackDispatcher(){
  Workmanager().executeTask((taskName,inputData){
  switch(taskName){
    case 'FirstTask':
   { sendDate();
    break;
    }
    default:  
  }
  return Future.value(true);
  });
 }
 
 void sendDate() {
  print("print date function called");
 }

void main() async {

  // workmanager
WidgetsFlutterBinding.ensureInitialized();
await Workmanager().initialize(
                         callBackDispatcher,
                         isInDebugMode: true   // shows in notif
                         );

  // services
await Permission.notification.isDenied.then((value){
if(value){
  Permission.notification.request();
}
});
await initializeService();

  runApp(const MyApp());
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HeroAnim(),
    );
  }
}

void main() async {
  runApp(const MyApp());
}