

import 'package:flutter/material.dart';
import 'package:get/get.dart';
enum XOState {
  e,
  x,
  o,
}
class Task33Controller extends GetxController {
  //TODO: Implement Task33Controller
var currentPlayer = "X".obs;
//  var playerSide = XOState.x.obs;
 var gameIsEnd = false.obs;
  var isTurn = true.obs;
  final count = 0.obs;
  final List<String> changeXO = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void makeMove(int i) {
    if (isTurn.value && changeXO[i] == '') {
      changeXO[i] = "O";
      isTurn.value = !isTurn.value;
      currentPlayer.value="X";}
      
      else if (!isTurn.value && changeXO[i] == '') {
      changeXO[i] = "X";
      isTurn.value = !isTurn.value;
      currentPlayer.value="O";
    }
    count.value++;
      checkWinner();
  }
  void checkWinner() {
    if (changeXO[0] == changeXO[1] &&
        changeXO[0] == changeXO[2] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[3] == changeXO[4] &&
        changeXO[3] == changeXO[5] &&
        changeXO[3] != '') {
      showDialog(winner: changeXO[3]);
    }
    if (changeXO[6] == changeXO[7] &&
        changeXO[6] == changeXO[8] &&
        changeXO[6] != '') {
      showDialog(winner: changeXO[6]);
    }
    if (changeXO[0] == changeXO[3] &&
        changeXO[0] == changeXO[6] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[1] == changeXO[4] &&
        changeXO[1] == changeXO[7] &&
        changeXO[1] != '') {
      showDialog(winner: changeXO[1]);
    }
    if (changeXO[2] == changeXO[5] &&
        changeXO[2] == changeXO[8] &&
        changeXO[2] != '') {
      showDialog(winner: changeXO[2]);
    }
    if (changeXO[0] == changeXO[4] &&
        changeXO[0] == changeXO[8] &&
        changeXO[0] != '') {
      showDialog(winner: changeXO[0]);
    }
    if (changeXO[2] == changeXO[4] &&
        changeXO[2] == changeXO[6] &&
        changeXO[2] != '') {
      showDialog(winner: changeXO[2]);
    }

     if (count.value == 9) {
  checkGameEnd();
      gameIsEnd.value = true;
      showDialog(winnerExist: false);
      clearBoard();
    }
  }

  void showDialog({String winner = '', bool winnerExist = true}) {
    Get.defaultDialog(
      title: winnerExist ? 'Победитель: $winner' : 'Нет победителя',
      content: Column(
        children: [
          TextButton(
              onPressed: () {
                Get.back(closeOverlays: true);
              },
              child: const Text('Играть ещё раз!'))
        ],
      ),
    );
    count.value = 0;
    clearBoard();
  }

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      changeXO[i] = '';
    }
  }
 bool checkGameEnd() {
      gameIsEnd.value = true;
      return true;
    }

// }
//   final count = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void increment() => count.value++;
}
