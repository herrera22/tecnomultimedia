//Alumno:Abel Herrera_comision_3
//legajo:88522/0
//Youtube:https://youtu.be/mGsLfAIRfKk


//variable para manejar el crecimienro de la funcion pupila.
float Abs;
//col variable de color.
int col;
//variable para manejar el tiempo del programa como contador. 
int tiempo;
//otra variable de color.
float col2;


void setup() {
  //pantalla.
  size(500, 500); 
  frameRate(30);
  //valores asignados de cada variable.
  Abs=0;
  col=255;
  col2=(0);
  tiempo=1;
}


void draw() {
  //fondo 
  background(255);
  //funcion de circulos que se encuentran en el medio de la pantalla y se mueven con el mouse por el eje x.
  circulito();
  //cuadrados a modo de pasillo.
  cuadradito();
  //pupila que crece de 0 a 10 en el medio de los circulos.
  pupila(Abs);
  //sumo valor a las variables para generar cambios por frames. 
  Abs=Abs+1;
  tiempo=tiempo+1;
  col2=col2+2;
}
//eventos del mouse.
void mousePressed() {
  //si la variable Abs llega al valor de 100 se convierte en un boton que reinicia el programa. 
  if (Abs>=100) {
    col=0;
    float d1 = dist(mouseX, mouseY, mouseX, width/2);
    float r1 = 100/2;
    if (d1 < r1) {
      col=255;
      col2=(0);
      Abs=0;
      tiempo=0;
    }
  }
  //mientras Abs no llegue a 100 podemos cambiar el color del boton de blanco a negro con un clik modificando el valor de col. 
  if (col == 255 ) {
    col = 0 ;
  } else {
    col = 255;
  }
}
