import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer uno;
AudioPlayer dos;
AudioPlayer tres;

//Abel Herrera, Pablo Rodriguez, Elias Cervello
//Tecno comision 3-tp5.
//link youtube:https://youtu.be/qJfG7HPB4-4

Juego j;
PFont fuente;

int estado=0;
  int t;
void setup() {
  frameRate(30);
  size(800, 600);
  //fuentes
  fuente = createFont("z.ttf", 10);
  textFont(fuente);
  //constructor de la clase juego
  j = new Juego();
  //libreria de audio
  minim = new Minim(this);
  uno=minim.loadFile("1.mp3");
  dos=minim.loadFile("2.mp3");
  tres=minim.loadFile("3.mp3");
}
void draw() {
  background(0);
  j.game();
}
void keyPressed() {
  if (estado==1) {
    j.avanzar();
    j.e2();
  } else if (estado==8) {
    j.reinicio();
  } else if (estado==7) {
    j.shoot();
  }else if (estado==10){
   j.creditos(); 
  }else if(estado==11){
   j.reinicio(); 
  }
}
void mousePressed() {
  if (estado==0) {
    j.creditos1();
    j.colisionesinicio();
  } else if (estado==2) {
    j.cambio();
  } else if (estado==3) {
    j.cambio2();
  } else if (estado==4) {
    j.cambio3(); 
    j.cambioperder();
  } else if (estado==5) {
    j.cambio4();
  } else if (estado==6) {
    j.boti();
  }else if(estado==9){
    j.bullet();
  }
  println(mouseX, mouseY);
}
