//variable tiempo
int tiempo;
//variables de shenlong
int posS;
int tamS;
//variables de fotos 
PImage fondo1;
PImage fondo2;
PImage gohan ;
PImage shenlong;
PImage gokuvsf;
PImage gyg;
PImage vegeta;
PImage gz;
//variables de fuentes
PFont fuente;
//variables de texto 
String user;
String credito1;
String credito2;
String credito3;
String credito4;
String credito5;
String credito6;
//variables de animacion de texto 
float posy;
float posg;
float pos;

void setup() {
  size(600, 400);
  frameRate(30);
  //tiempo
  tiempo=0;
  //variables de shenglong
  posS=-300;
  tamS=600;
  //imagenes de pantallas
  fondo1=loadImage("fondo1.jpg");
  fondo2=loadImage("fondo2.jpg");
  gohan=loadImage("gohan.png");
  shenlong=loadImage("shenlong.png");
  gokuvsf=loadImage("gvsf.jpg");
  gyg=loadImage("gohanygoku.jpeg");
  vegeta=loadImage("vegeta.jpeg");
  gz=loadImage("guerrerosZ.jpg");
  //creditos 
  user=("Abel Herrera\nTecno multimedia  ");
  credito1=("Basado en el manga DRANGON BALL\n   creado por Akira Toriyama\n  en colaboracion con Shueisha");
  credito2=("  director    Daisuke Nishion\n planificador   Kouzou Morishita\n jefe de diseno  Yuuji Ikeda");
  credito3=(" musica     Shunsuke Kikushi\n \n animadores    Taiichirou Kobaran\n            Tetsuya Saeki\n            Naotoshi Shida   ");
  credito4=(" Goku     Mario Castaneda\n Gohan     Laura Torres\n Piccoro    Carlos Segundo\n Vegeta    Rene Garcia");
  credito5=("Krilin        Rossi Aguirre\nYamcha      Ricardo Mendoza\nTenshinhan     Ismael Larumbe\nBulma        Rocio Garcel");
  credito6=("Distribuido por Funimation Japon");


  //variables de los creditos 
  posy=60;
  posg=450;
  pos=250;

  //fuente
  fuente=createFont("Saiyan-Sans.ttf", 50);
  textFont(fuente);
}

void draw() {
  textSize(20);
  background(0);
  println(tiempo);
  //pantalla1
  image(fondo1, 0, 0, 600, 400); 
  text(user, 100, 300);
  if (tiempo>=30) {
    image(fondo2, 0, 0, 600, 400);
    //creditos de creador
    if (tiempo>=30 && tiempo<= 60) {
      text(credito1, 200, posy);
      posy=posy+1;
    }
  }
  //pantalla2
  if (tiempo>=65 && tiempo<90) {
    image(gohan, 300, 100, 300, 300);
    //creditos de direccion y diseño
    text(credito2, 150, posy);
    posy=posy-1;
  }
  //pantalla3
  if (tiempo>=95 && tiempo<=300) {
    image(shenlong, posS, -30, 300, tamS);
    posS=posS+5; 
    //creditos de arte , musica e ilustracion
    if (tiempo>=95 && tiempo<=160) {
      text(credito3, pos, 100);
    }
    //condicional de pos para el movimiento de creditos 
    if (pos>=310) {
      pos=310;
    }
    pos=pos+1;
    //creditos de protagonistas
    if (tiempo>= 165 && tiempo<=210) {
      text(credito4, pos, 100);
    }
    //creditos de personajes secundarios
    if (tiempo>=215 && tiempo<=265) {
      text(credito5, pos, 100);
    }
    //credito de distribucion
    if (tiempo>=270 && tiempo<=290) {
      text(credito6, 280, 100);
    }
    //condiconal para el movimiento y el tamaño de shenglong
    if (posS>=0) {
      posS=0;
      tamS=tamS+1;
    }
  }
  //pantalla 4
  if (tiempo>=300 && tiempo<=310) {
    image(gokuvsf, 0, 0, 600, 400);
  }

  // pantalla 5
  if (tiempo>=310) {
    image(gyg, 0, 0, 600, 400);
  }
  //pantalla 6 
  if (tiempo>=320) {
    image(vegeta, 0, 0, 600, 400);
  }
  //pantalla7
  if (tiempo>=330) {
    image(gz, 0, 0, 600, 400);
  }
  if (tiempo>=350) {
    background(0);
    text("Presionar barra espaciadora para reiniciar", 160, 200);
  }
  //variable de tiempo
  tiempo=tiempo+1;
}
//cordenadas
void mousePressed() {
  println(mouseX, mouseY);
}
//reinicio de la aventura
  void keyPressed(){
    if (keyCode ==' ') {
      tiempo=0;
      posS=-300;
      tamS=600;
      pos=240;
    }
    
  }
