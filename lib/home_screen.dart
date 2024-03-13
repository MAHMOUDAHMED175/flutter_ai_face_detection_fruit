//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:tflite/tflite.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   bool isWorking =false;
//   String result = "";
//   CameraController ? cameraController;
//   CameraImage? imgCamera;
//
//   initCamera(){
//     cameraController=CameraController(cameras![0], ResolutionPreset.medium);
//     cameraController!.initialize().then((value) {
//       if(!mounted){
//         return;
//       }
//       setState(() {
//         cameraController!.startImageStream((imageFromStream) {
//           if(!isWorking){
//             isWorking=false;
//             imgCamera = imageFromStream;
//           }
//         });
//       });
//     });
//   }
//   initialModel()async{
//
//     await Tflite.loadModel(model: "assets/model.tflite",labels: "assets/labels.txt");
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initialModel();
//   }
//   @override
//   void dispose() async{
//     // TODO: implement dispose
//     super.dispose();
//     await Tflite.close();
//     cameraController!.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
