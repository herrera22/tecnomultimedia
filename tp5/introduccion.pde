//clase que aplica a la pantalla de inicio 
class Comienzo {
  String[]instruccion ={"En el año 2023 hubo un accidente nuclear que arrazo con la mitad de  \nEuropa, la contaminacion convirtio a los supervivientes en caminantes\nen busca de carne y cerebros.", 
    "Han pasado 5 años de ese dia, la civilizacion cayo bajo el poder de los \nzombies, me encuentro solo en la ciudad capital en busca de  \nmedicamentos para convatir una infeccion en la pierna.", 
    "Logre encontrar el hospital central, me debere internar en el para \nbuscar la medicina y tener un dia mas de vida..."};

  Comienzo() {
    t = 0;
  }
  void estado1() {
    push();
    fill(0);
    stroke(255);
    strokeWeight(3);
    rect(50, 50, 700, 500);
    pop();
    texto();
  }
  void texto() {
    push();
    fill(255);
    textSize(20);
    text(instruccion[t], 60, 200);
    pop();
    avanzar2();
  }
  void avanzar() {
    t=t+1;
    if (t>=instruccion.length) {
      t=2;
    }
  }
  void avanzar2() {
    if (t>=2) {
      push();
      textSize(20);
      text("apreta enter para entrar a la pesadilla", 360, 500);
      pop();
    }
  }
  void enter() {
    if (t>=2 && keyCode == ENTER) {
      estado=2;
    }
  }
} 
