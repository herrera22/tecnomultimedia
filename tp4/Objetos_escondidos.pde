//Objetos escondidos en la escena 
class Objetos {
  //variable de cantidad para los arrays 
  int cantO=3;
  //variable de tamaño de los objetos
  int tam;
  int tam1;
  //variables de colision
  int[]pos={10,328,265+13,225+10,580+15,280+10};
  //arrays de objetos
  PImage[]Objetos= new PImage[cantO];
  String[] nombrefile={"0.png", "1.png", "2.png"};
  //booleans de objetos 
  boolean arma = true;
  boolean guantes = true;
  boolean joya = true;
  //constructor
  Objetos() {
    //tamaños
    tam = 50;
    tam1 = 30;
    //booleans
    arma = true;
    guantes = true;
    joya= true;
    //pos para las colisiones 
    //pos1=10;
    //pos2=328;
    //pos3=265+13;
    //pos4=225+10;
    //pos5=580+15;
    //pos6=280+10;
    //asignacion de imagenes para los objetos con ciclo for 
    for (int a = 0; a < nombrefile.length; a++) {
      Objetos[a]=loadImage(nombrefile[a]);
    }
  }
  //metodo del conjunto de los objetos
  void objetos() {
    arma();
    guantes();
    joya();
  }
  //metodo del arma 
  void arma  () {
    push();
    image(Objetos[0], -10, 310, tam, tam);
    pop();
  }
  //metodo del guante 
  void guantes() {
    push();
    image(Objetos[1], 265, 225, tam1, tam1);
    pop();
  }
  //metodo de la joya 
  void joya() {
    push();
    image(Objetos[2], 580, 280, 60, 30);
    pop();
  }
  void imprimir() {
    println(arma);
  }
  //metodo de las colosiones y el cambio de sobre las variables booleans
  void colisiones1() {
    if (dist(mouseX, mouseY, pos[0], pos[1])<25) {
      arma=false;
    }
    if (dist(mouseX, mouseY, pos[2], pos[3])<10) {
      guantes=false;
    }
    if (dist(mouseX, mouseY, pos[4], pos[5])<10) {
      joya=false;
    }
  }
  void cambioDeEstado() {
    if (estado == 1 && arma == false && guantes == false && joya == false  ) { 
      estado = 2;
      
    }
    if(arma == false){
      line(60,476,480,476);
    }
     if(guantes == false){
      line(60,508,480,508);
    }
     if(joya == false){
      line(60,542,480,542);
    }
  }
}
