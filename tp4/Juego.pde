class Juego {
  //objetos derivados de padre
  //objeto escena
  Escena e;
  //objeto de cuadro de texto
  Cuadro c;
  //objetos escondidos
  Objetos o;
  //Constructor
  Juego() {

    //Objetos
    e = new Escena();
    c = new Cuadro();
    o = new Objetos();
  }
  //metodo jugable
  void game() {
    if (estado ==0) {
      Estado0();
    } else if (estado==1) {
      Estado1();
    } else if (estado==2) {
      Estado2();
    }
  }
  //metodo que engloba todo el estado0
  void Estado0() {
    c.forma();
  }
  //metodo que engloba todo el estado1
  void Estado1() {
    e.fondo();
    o.objetos();
    c.forma();
    o.cambioDeEstado();
  }
  //metodo que engloba todo el estado2
  void Estado2() {
    push();
    background(0);
    textSize(70);
    text("ganaste", 250, 280);
    pop();
  }
  //metodo que genera las colisiones
  void colision() {
    o.colisiones1();
  }
  //metodo que genera el uso de botones
  void avanzar() {

    if (keyCode == RIGHT) {
      c.avanzar();
    }
    if (t==2 && estado== 0 && keyCode == ENTER) {
      estado=1;
    }
  }
}
