import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

class WorkManagerScreen extends StatefulWidget {
  const WorkManagerScreen({super.key ,required this.task});
final task;
  @override
  State<WorkManagerScreen> createState() => _WorkManagerScreenState();
}

class _WorkManagerScreenState extends State<WorkManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("workManager"),),
     body: Center(
      child:ElevatedButton(onPressed: () async{
        String uniqueId=DateTime.now().second.toString();
        await Workmanager().registerPeriodicTask(uniqueId, widget.task ,initialDelay: Duration(seconds: 2),constraints: Constraints(networkType: NetworkType.connected));

      }, child: Text("schedule task")) ,),
    );
  }
}