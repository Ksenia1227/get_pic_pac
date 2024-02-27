import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task33_controller.dart';

class Task33View extends GetView<Task33Controller> {
  //  const Task33View({Key? key}) : super(key: key);
   @override
  final controller = Get.put(Task33Controller());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 72, 138),
        appBar: AppBar(
          
          title: Text("Игра"),
        ),
         body: 
         Column(
          children: [
              Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
           children: [Text("Ход: ",
           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            Obx(() => Text(
                    controller.currentPlayer.value == "X"
                        ? "O"
                        : "X",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: controller.currentPlayer.value == "X"
                            ? Colors.amber
                            : Colors.blue))),
          
          ]),
             ),
            Container(

                width: 400,
                height: 400,
                child: GridView.builder(
                    itemCount: controller.changeXO.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (BuildContext ctx, int index) {
                      return GestureDetector(
                        onTap: () {controller.makeMove(index);},
                        child: Container(
                          decoration: BoxDecoration(
                            
                              border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
                          child: Center(
                              child: Obx(() =>Text(
                            controller.changeXO[index],
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 90.0, color: Colors.amber),
                          ))),
                        ),
                      );
                    })),
    ]));
  }
}
