import 'package:flutter/material.dart';

class CalculadoraProvider extends ChangeNotifier {
  int a = 0;
  int b = 0;
  int c = 0;
  String op = "";
  String cadPant = "";
  void borrarTodo() {
    a = 0;
    b = 0;
    c = 0;

    cadPant = "";
    notifyListeners();
  }

  void limpiarDatos() {
    cadPant = "";
    notifyListeners();
  }

  void setCadPant(String v) {
    cadPant += v;
    notifyListeners();
  }

  void eventoresta() {
    op = '-';
    a = int.parse(cadPant);
    limpiarDatos();
  }

  void eventomult() {
    op = '*';
    a = int.parse(cadPant);
    limpiarDatos();
  }

  void eventodiv() {
    a = int.parse(cadPant);
    limpiarDatos();
  }

  void eventoMas() {
    a = int.parse(cadPant);
    limpiarDatos();
  }

  void eventoIgual() {
    b = int.parse(cadPant);
    if (op == "+") {
      a = a + b;
    } else if (op == "-") {
      a -= b;
    } else if (op == "*") {
      a = a * b;
    }
    cadPant = "$a";
    notifyListeners();
  }

  void operacion({
    required String p1,
    required String p2,
  }) {
    a = int.parse(p1);
    b = int.parse(p2);
    c = a + b;
  }
}
