//Tecno multimedia comision 3
//nombres:Giovanni Nieva(91312/5),Abel Herrera(88522/0)
//Documento:https://docs.google.com/document/d/1KSMTwD1OFHO0xbHBfjI5b1vwn19Pp7qSJyHZ9TaCcOU/edit?usp=sharing
//Video explicativo:https://youtu.be/gkuhdYc_h_g



//objeto padre juego
Juego j;
PFont fuente;
//variable modificables para la animacion del texto
int t = 0;
int estado=0;

void setup() {
  size(800, 600);
  //fuentes
  fuente = createFont("1942.ttf", 10);
  textFont(fuente);
  //Constructor del objeto 
  j = new Juego();
}


void draw() {
  background(0);
  j.game();
}
void mousePressed() {
  j.colision();
}

void keyPressed() {
  j.avanzar();
}
