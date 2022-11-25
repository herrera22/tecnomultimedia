//clase que applica a cada escenario dentro del hospital 
class Hospital {
  //array de escenas
  PImage botiquin;
  int Cant0 = 10;
  int Cant1 =3;
  PImage[]hospital= new PImage[Cant0];
  String[]imagenes={"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "salida.jpg"};
  PImage[]flechas=new PImage[Cant1];
  String[]flechitas={"flecha.png", "flecha1.png", "flecha2.png"};
  //array de textos
  String[]escenas={"Luego de diambular horas por esta ciudad perdida encontre este \nviejo hospital...quiza tenga medicamentos."
    , "El lugar se encuentra en silencio, se huele a muerte en cada esquina...\ntengo que encontrar un botiquin y salir de aca cuanto antes "
    , "Este pasillo da miedo, en mi estado no puedo sobrevivir a una emboscada grande \nSera mejor que tenga cuidado y no recorra pasillos muy amplios."
    , "La habitacion de la derecha es la enfermeria, de haber algo tiene que estar ahi", 
    "Econtre el botiquin tengo que agarrarlo y salir de aca ya mismo!"
    , "Sabia que tenia que evitar los pasillos amplios, estoy muerto! \n \n \n    presiona enter para volver a empezar"
    , "Tengo que salir ya de aca...Escucho zombies fuera...es todo o nada \n \n \n   presiona enter para terminar la aventura"
    , "clikea sobre los zombies para disparar"
    , "logramos sobrevivir, es hora de continuar con el viaje \n \n \n presiona enter para terminar la aventura "};
  Hospital() {
    botiquin = loadImage("botiquin.png");
    //declaracion de escenas
    for (int a = 0; a < imagenes.length; a++) {
      hospital[a]=loadImage(imagenes[a]);
    }
    //declaracion de flechas
    for (int a = 0; a < flechitas.length; a++) {
      flechas[a]=loadImage(flechitas[a]);
    }
  }
  //rectangulo de texto
  void rectText() {
    push();
    stroke(255);
    strokeWeight(5);
    fill(0);
    rect(0, 350, 800, 600);
    pop();
  }
//escenas del juego
  void escena1() {
    image(hospital[0], 0, 0, 800, 400);
  }
  void escena2() {
    image(hospital[1], 0, 0, 800, 400);
  }
  void escena3() {
    image(hospital[2], 0, 0, 800, 400);
  }
  void escena4() {
    image(hospital[6], 0, 0, 800, 400);
  }
  void escena5() {
    image(hospital[8], 0, 0, 800, 400); 
    image(botiquin, 400, 240, 80, 80);
  }
  void escena6() {
    image(hospital[9], 0, 0, 800, 400);
  }
  void escena7() {
  }
//distintos cuadros de dialogo a lo largo del juego 
  void texto1() {
    push();
    textSize(20);
    fill(255);
    text(escenas[0], 20, 400);
    pop();
  }
  void texto2() {
    push();
    textSize(20);
    fill(255);
    text(escenas[1], 20, 400);
    pop();
  }
  void texto3() {
    push();
    textSize(20);
    fill(255);
    text(escenas[2], 20, 400);
    pop();
  }
  void texto4() {
    push();
    textSize(20);
    fill(255);
    text(escenas[3], 20, 400);
    pop();
  }
  void texto5() {
    push();
    textSize(20);
    fill(255);
    text(escenas[4], 20, 400);
    pop();
  }
  void texto6() {
    push();
    textSize(20);
    fill(255);
    text(escenas[5], 20, 400);
    pop();
  }
  void texto7() {
    push();
    textSize(20);
    fill(255);
    text(escenas[6], 20, 400);
    pop();
  }

  void texto8() {
    push();
    textSize(20);
    fill(255);
    text(escenas[7], 20, 400);
    pop();
  }
  void texto9() {
    push();
    textSize(20);
    fill(255);
    text(escenas[8], 20, 400);
    pop();
  }
//imagenes usadas para las flechas 
  void flecha(int posx, int posy) {
    image(flechas[0], posx, posy, 50, 50);
  }
  void flecha1(int posx, int posy) {
    image(flechas[2], posx, posy, 50, 50);
  }
  void flecha2(int posx, int posy ) {
    image(flechas[1], posx, posy, 50, 50);
  }
}
