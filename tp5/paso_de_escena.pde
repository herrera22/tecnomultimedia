//funcionamiento de cada boton del juego 
class Paso {

  Paso() {
  }
  void cambio1(int posx_, int posy_, int est) {
    //circle(360, 230, 50);
    if (dist(mouseX, mouseY, posx_, posy_)<25) {
      estado=est;
    }
  }
  void reinicio() {
    if (keyCode == ENTER) {
      t=0;
      estado=0;
     uno.rewind();
     uno.play();
     dos.rewind();
     tres.rewind();
    }
  }
  void shoot() {
    if (keyCode == ENTER) {
      estado=9;
    }
  }
  void creditos() {
    if (keyCode == ENTER) {
      estado=11;
    }
  }
}
