//Objeto que contiene cuadro de texto
class Cuadro {
  //variables 
  int pr;
  //array de texto para las instrucciones del cuadro 
  String[]Texto={"En esta casa hubo un asesinato...", 
    "Deberas ayudar al detective a resolver el caso", 
    "Tienes que encontrar:\n  .una pistola\n  .un par de guantes\n  .Collar de oro de la victima  "};
  Cuadro() {
    //parametro de rect
    pr = 800;
  }
  //metodos de cuadro de texto
  void forma() {
    push(); 
    fill(255);
    rect(0, 400, pr, pr);
    stroke(10);
    pop();
    texto();
    instruccion();
  }
  //metodo de texto
  void texto() {
    push();
    fill(0);
    textSize(25);
    text(Texto[t], 4, 450);
    pop();
  }
  //metodo para pasar el texto
  void avanzar() {
    t=t+1;
    if (t>=Texto.length) {
      t=2;
    }
  }
  void instruccion() {
    if ( t<2 && estado==0) {
      push();
      fill(255, 0, 0);
      textSize(20);
      text("flecha derecha para pasar el texto", 4, 570);
      pop();
    }
    if (t==2 && estado ==0){
      push();
      fill(255, 0, 0);
      textSize(20);
      text("presiona ENTER para jugar", 4, 570);
      pop();
    }
  }
}
