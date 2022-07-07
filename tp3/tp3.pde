//super carreras
//tecnologia multimedia,comision 3
//profesor:David Bedoian
//Abel Herrera ,legajo n°88522/0
//Youtube:https://youtu.be/kBtIbkTSHjg

int contador ;
//variables de movimiento de los personajes 
int tam1 ;
int tam2 ;
//variable del movimiento de los creditos 
int tam3;
//variable de estado
int Estado;
//variables de instrucciones 
int avanzo;
//cantidad de sprites para los arrays de los personajes 
int CantS1 = 4;
int CantS2 =3;
//variables de movimiento de los sprites 
int vm;
int vb;
//variables de textos usadas en cada pantalla del juego 
String pantalla1;
String instruccion1;
String campeon;
String perdedor;
String continuar;
//arrays de nombre de los archivos de los personajes 
String[] nombrefile={"1.png", "2.png", "3.png", "4.png"};
String[] nombrefile2={"a.png", "b.png", "c.png"};
//texto de historia e introduccion de estado 1
String[] texto={"mario y bowzer juegan una carrera para \n            definir el destino del mundo", 
  "          si mario falla, la vida de la princesa\n y de todo el reino champiñon estara perdida", 
  "                          no puede fallar", 
  "       pulsa la flecha derecha o el boton(D)\n   para que mario corra y gane la carrera", 
  "                        presiona la letra (Y)\n                    para comenzar el juego"};
//creditos 
String creditos;
//fuente 
PFont nuevaFuente;
//fondo
PImage fondo;
//arrays de los personajes 
PImage []mario = new PImage[CantS1];
PImage []bowzer = new PImage[CantS2];
//imagenes de victoria y de derrota
PImage Mgano;
PImage Mperdio;

void setup() {
  size (800, 400);
  frameRate(30);
  //variable del contador 
  contador=30*4;
  //variable de movimiento de los sprites
  vm=0;
  vb=0;
  //variable tam
  tam1=0 ;
  tam2=0;
  tam3=-500;
  //variable de estado 
  Estado=0;
  //variable de instrucciones 
  avanzo=0;
  //variable pantalla 1
  pantalla1="  programado por Abel Herrera \nProducido para Tecno multimedia";
  //variable de intruccion en la pantalla 1
  instruccion1="  Presiona Enter para jugar!";
  //variable de ganaste 
  campeon="Ganaste!";
  //variable de perdiste 
  perdedor="perdiste!";
  //vcariable de continuar
  continuar="presiona la barra espaceadora"; 
  //variable de los creditos 
  creditos="              Super Carreras \n imagenes y musica: supermario bros\n programado por:Abel Herrera\n diseñado por:Abel Herrera\n producido por:Abel Herrera \n para: tp de tecno multimedia \n producido para:Diseño multimedial inc\n asociados a: FDA y UNLP";
  //variable pfont
  nuevaFuente=createFont("Pixeled.ttf", 10);
  textFont(nuevaFuente);
  //variable pimage
  //ciclo for para declarar los sprites de mario
  for (int a = 0; a < nombrefile.length; a++) {
    mario[a]=loadImage(nombrefile[a]);
  } 
  //ciclo for para declarar al sprite de bowzer
  for (int a = 0; a < nombrefile2.length; a++) {
    bowzer[a]=loadImage(nombrefile2[a]);
  } 
  //variable del fondo 
  fondo=loadImage("posible fondo.jpg");
  //variable de imagen de victoria y derrota 
  Mgano = loadImage("mario gano.png");
  Mperdio = loadImage("Bowzer gano.png");
}
void draw() {
  //Estado0
  PantallaDInicio();

  //Estado1(Historia e intrucciones)
  if (Estado == 1) {
    Estad1();
  }
  //Estado2 (contador)
  else if (Estado == 2) {
    Estad2();
  }
  //Estado3 (juego)
  else if (Estado==3) {
    Estad3();
  }
  //Estado 4 (gane)
  else if (Estado==4) {

    Gane();
  }
  //Estado 5 (perdi)
  else if (Estado==5) {

    Perdi();
  } else if (Estado==6) {
    Credito();
  }
}
void mousePressed() {
  //pantalla de estado1
  if (Estado==1) {
    Avanzar();
  }
}  
void keyPressed () {
  //pantalla de estado 0
  if (Estado == 0 && keyCode == ENTER) {
    Estado = 1;
  }
  //pantalla de estado1
  else if (Estado == 1 && avanzo==4 && key == 'y' ) {
    Estado = 2;
  } else if (Estado == 3 && keyCode == RIGHT ) {
    AvanzarMario();
  } else if (Estado == 3 && key == 'd' ) {
    AvanzarMario();
  }

  //pantalla de estado 4(ganador) y reinicio 
  else if (Estado==4 && keyCode == ' ' ) {
    Estado=6;
  }
  //pantalla de estado 5(perdedor) y reinicio 
  else if (Estado == 5 && keyCode ==  ' ') {
    Estado=6;
  } else if (Estado == 6 && tam3>=450 && keyCode == ' ') {

    vm=0;
    vb=0;
    contador=30*4;
    tam1=0 ;
    tam2=0;
    tam3=-500;
    avanzo =0;
    Estado = 0;
  }
}
