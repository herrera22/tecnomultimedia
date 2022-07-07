//funcion del contador 
void contador() {
  pushStyle();
  fill(255, 0, 0);
  textSize(40);
  frameRate(30);
  text(contador/30, 380, 200);
  contador--;
  if (contador<=0 ) {
    Estado=3;
  }
}

//funciones de los botones 
void Avanzar() {
  avanzo++;
  if (avanzo >= texto.length) {
    avanzo=4;
  }
}
//funciones de animacion anidadas para el sprite de mario 
void AvanzarMario() {
  pushStyle();
  frameRate(20);
  vm ++;
  ValorDImagen1();
  tam1=tam1+4;
  popStyle();
}
void ValorDImagen1() {
  if (vm >=mario.length) {
    vm = 1;
  }
}
//funciones de animacion anidadas para el sprite de bowzer
void AvanzarBowzer() {
  frameRate(20);
  vb++;
  ValorDImagen2();
  tam2=tam2+5;
}
void ValorDImagen2() {
  if (vb >=bowzer.length) {
    vb = 0;
  }
}

//funciones del juego y sus estados 

//funcion del titulo
void Titul() {
  fill(255);
  textSize(20);
  fill(255, 0, 0);
  text("Super Carrera", 270, 100);
}
//funcion del subtitulo 
void subT() {
  textSize(15);
  fill(0, 0, 255);
  text(pantalla1, 200, 150);
}
//funcion de la instruccion para iniciar 
void instru1() {
  fill(255);
  textSize(15);
  fill(255, 0, 0);
  text(instruccion1, 220, 350);
}
//funcion del cuadrado que se ve en la pantalla de inicio 
void Cuad() {
  pushStyle();
  fill(0, 0, 0);
  strokeWeight(10);
  stroke(random(0, 255));
  rect(150, 20, 500, 250);
  popStyle();
}
//pantalla de inico con sus funciones anidadas
void PantallaDInicio() {
  background(0);
  Cuad();
  Titul();
  subT();
  instru1();
}
//funcion para estado 
void Estad1() {
  background(0);
  textSize(10);
  fill(255, 0, 0);
  text("pasa el texto con el click del mouse", 0, 20);
  textSize(15);
  fill(255);
  text(texto[avanzo], 150, 200);
}
//funcion para estado2
void Estad2() {
  pushStyle();
  tint(90);
  image(fondo, 0, 0);
  popStyle();
  fill(0, 255, 255);
  text("     cuando el contador llegue a 0 comienza la carrera\npresiona la flecha derecha o el boton (D) para avanzar", 70, 70);
  contador();
}
//funcion para estado 3 con los personajes en funciones anidadas 
void Estad3() {
  image(fondo, 0, 0);
  Juego();
  if (tam1>=680) {
    Estado=4;
  } else if (tam2>=680) {
    Estado=5;
  }
}
void Juego() {
  Player(310);
  Enemy(295);
}
//funcion que contiene a mario 
void Player(int ex) {
  image(mario[vm], tam1, ex, 60, 60);
}
//funcion que contiene a bowzer
void Enemy(int ex2) {
  image(bowzer[vb], tam2, ex2, 70, 70);
  AvanzarBowzer();
}
//Estado 4 y 5 (ganador y perdedor)
void Gane() {
  background(0);
  image(Mgano, 295, 25);
  fill(0, 0, 255);
  text(campeon, 340, 200);
  text(continuar, 200, 250);
  tam2=0;
}
void Perdi() {
  background(0);
  image(Mperdio, 280, 25, 220, 155);
  fill(255, 0, 0);
  text(perdedor, 340, 200);
  text(continuar, 200, 250);
  tam1=0;
}
//Estado 6 son los creditos del juego 
void Credito() {
  background(0);
  fill(255);
  text(creditos, 200, tam3);
  tam3=tam3+5;
  if (tam3>=400) {
    tam3=500; 
    text("Presiona la barra espaciadora para volver a jugar", 80, 200);
  }
}
