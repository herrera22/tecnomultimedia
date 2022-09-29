//Objeto escena 
class Escena {
  //variables de las propiedades de la escena 
  int h, w, xy;
  //imagenes usadas en la escena 
  PImage Escenario = loadImage("escena1.jpg");
  PImage huella = loadImage("huella.png");
  Escena() {
    //asignacion de los valores de la escena 
    h=800;
    w=400;
    xy=0;
  }
  //metodo del fondo 
  void fondo() {
    image(Escenario, xy, xy, h, w); 
    image(huella, 225, 145, 20, 30);
  }
}
