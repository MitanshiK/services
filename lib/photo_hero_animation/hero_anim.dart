import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:services/photo_hero_animation/photo_hero.dart';

// class HeroAmin extends StatelessWidget {
//   const HeroAmin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     timeDilation=10;

//     return Scaffold(
//       appBar: AppBar(title: Text("Hero Animation"),),
//       body: Center(
//         child: PhotoHero(
//           photo: "assets/stAlbum3.png",
//             width: 300,
//             ontap: () {
//               Navigator.of(context).push( MaterialPageRoute(builder: (context) {
//                return Scaffold(
//                 backgroundColor: const Color.fromARGB(255, 191, 159, 170),
//                 appBar: AppBar( title: Text("Hero Animation"),
//                 ),body: Container(
//                   padding: EdgeInsets.all(20),
//                   alignment: Alignment.topLeft,
//                   child: PhotoHero(ontap: (){
//                     Navigator.pop(context);
//                   }, photo: "assets/stAlbum3.png", width: 100),
//                 ),
//                 );
//               })
//               );
//             }),
//       ),
//     );
//   }
// }
//////////////////////
class HeroAnim extends StatelessWidget {
  const HeroAnim({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;
 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture hero'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: PhotoHero(
          photo: 'assets/stAlbum3.png',
          width: 300.0,
          ontap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Hero transition'),
                ),
                body: Container(
                  // background of 2nd route
                  color: const Color.fromARGB(255, 239, 171, 193),
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHero(
                    photo: 'assets/stAlbum3.png',
                    width: 100.0,
                    ontap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}