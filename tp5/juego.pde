//clase madre del juego
class Juego {
  //pantalla de inicio
  Inicio i;
  //escenario
  Hospital h;
  //introduccion
  Comienzo c;
  //paso de escena
  Paso p;
  //shotter
  shoot s;
  //creditos
  Creditos f;
  //array de objetos zombies
  int cantZombie = 3;
  Zombies []z = new Zombies[cantZombie];

  Juego() {
    //constructor 
    i = new Inicio();
    c = new Comienzo();
    h = new Hospital();
    p = new Paso();
    s= new shoot();
    f= new Creditos();

    //array de objeto
    for (int i =0; i<z.length; i++) {
      z[i] = new Zombies(loadImage("zombie.png"), 207, 50, 300, 300);
    }



    //int
  }

  //metodo juego y estados 
  void game() {
    if (estado == 0) {
      Estado0();
    } else if (estado==1) {
      Estado1();
    } else if (estado==2) {
      Estado2();
    } else if (estado == 3) {
      Estado3();
    } else if (estado==4) {
      Estado4();
    } else if (estado==5) {
      Estado5();
    } else if (estado==6) {
      Estado6();
    } else if (estado==7) {
      Estado7();
    } else if (estado==8) {
      Estado8();
    } else if (estado==9) {
      Estado9();
    } else if (estado==10) {
      Estado10();
    } else if (estado==11) {
      Estado11();
    }
  }


  //metodos de escena
  void Estado0() {
    i.estado0();
    dos.pause();
    tres.pause();
    uno.play();
  }
  void Estado1() {
    tres.pause();
    c.estado1();
  }
  void Estado2() {
    uno.pause();
    dos.play();
    tres.pause();
    h.escena1();
    h.flecha(440, 244);
    h.rectText();
    h.texto1();
  }
  void Estado3() {
    dos.pause();
    tres.play();
    h.escena2();
    h.flecha(394, 210);
    h.rectText();
    h.texto2();
  }
  void Estado4() {
    dos.pause();
    tres.play();
    h.escena3();
    h.flecha(346, 200);
    h.flecha1(434, 235);
    h.rectText();
    h.texto3();
  }
  void Estado5() {
    dos.pause();
    tres.play();
    h.escena4(); 
    h.rectText();
    h.texto4();
    h.flecha2(646, 225);
  }
  void Estado6() {
    tres.play();
    dos.pause();
    h.escena5();
    h.rectText();
    h.texto5();
  }
  void Estado7() {
    dos.pause();
    tres.play();
    background(0);
    h.rectText();
    h.texto7();
  }
  void Estado8() {
    dos.pause();
    tres.play();
    z[0].zombie();
    h.rectText();
    h.texto6();
  }
  void Estado9() {
    dos.pause();
    tres.play();
    h.escena4();
    h.rectText();
    h.texto8();
    s.zombie();
    s.paso();
  }
  void Estado10() {
    dos.pause();
    tres.play();
    h.escena6();
    h.rectText();
    h.texto9();
  }
  void Estado11() {
    tres.pause();
    dos.pause();
    f.Credito();
  }


// colisiones
  void colisionesinicio() {
    i.colisiones();
  }
  //funciones que ayudan a avanzar en determinadas acciones del juego 
  void avanzar() {
    if (keyCode == RIGHT) {
      c.avanzar();
    }
  }
  void e2() {
    c.enter();
  }
  void cambio() {
    p.cambio1(411, 265, 3);
  }
  void cambio2() {
    p.cambio1(360, 230, 4);
  }
  void cambio3() {
    p.cambio1(325, 230, 5);
  }
  void cambioperder() {
    p.cambio1(448, 211, 8);
    tres.pause();
  }
  void cambio4() {
    p.cambio1( 750, 253, 6);
  }
  void boti() {
    p.cambio1( 439, 278, 7);
  }
  void reinicio() {
    p.reinicio();
  }
  void shoot() {
    p.shoot();
  }
  void bullet() {
    s.bullet();
  }
  void creditos() {
    p.creditos();
  }
  void creditos1() {
    if (dist(mouseX, mouseY, 400, 481)<40) {
      estado=11;
    }
  }
}
