//funcion de los ellipses que utiliza ciclo for para su repeticion.
void circulito() {

  noFill();
  for (int d = 400; d > 0; d -= 10) { 
    strokeWeight(2);
    ellipse(mouseX, width/2, d, d);
  }
}
//funcion de cuadrados que genera una sensacion de pasillo utilizando ciclo for para su repeticion y guardando un determinado estilo.
void cuadradito() {
  pushStyle();
  for (int d = 500; d > 0; d -= 5) { 
    strokeWeight(2);
    stroke(col2);
    rectMode(CENTER);
    rect(height/2, width/2, d, d);
  }
  popStyle();
}
//funcion de la pupila , que tambien guarda un determinado estilo visual.Esta funcion utiliza un parametro float.
void pupila(float para) {
  pushStyle(); 
  frameRate(30);
  fill(col); 
  noStroke();
  ellipse(mouseX, width/2, para, para); 
  if (Abs>=100) {
    Abs=100;
  }
  popStyle();
}
