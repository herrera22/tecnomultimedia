//Construccion de los creditos y sus opciones 
class Inicio {

  String[]opciones={"Jugar", "Creditos"};
  int opx;
  int opx2;
  Inicio() {
    opx=360;
    opx2=340;
  }
  void estado0() {

    push();
    background(0);
    textSize(50);
    fill(255);
    text("the terror", 270, 200);
    pop();
    opciones();
  }

  void opciones() {

    push();
    textSize(30);
    fill(255);
    text(opciones[0], opx, 400);
    text(opciones[1], opx2, 500);
    pop();
  }
  void colisiones() {
    if (dist(mouseX, mouseY, 400, 370)<25) {
      estado=1;
    }
  }
}
