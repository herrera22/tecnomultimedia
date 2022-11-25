//clase que aplica a la seccion shooter del juego 
class shoot {
  PImage z1;
  PImage z2;
  PImage z3;
  PImage z4;
  boolean a;
  boolean b;
  boolean c;
  boolean d;


  shoot() {
    a=false;
    b=false;
    c=false;
    d=false;
    z1=loadImage("zombie.png");
    z2=loadImage("zombie1.png");
    z3=loadImage("zombie2.png");
    z4=loadImage("zombie3.png");
  }
  void zombie() {
    if (a==false) {
      image(z1, 207, 50, 300, 300);
    }
    if (b==false) {
      image(z2, 50, 50, 300, 300);
    }
  }
  void bullet() {
    if (dist(mouseX, mouseY, 384, 100)<25) {
      a=true;
    }
    if (dist(mouseX, mouseY, 221, 170)<25) {
      b=true;
    }
  }
  void paso() {
    if (a==true && b== true) {
      estado=10;
    }
  }
}
