//clase que aplica a los creditos
class Creditos{
  String[]cred={"Progrmado por Abel Herrera , Pablo rodriguez y  Elias Cervello  \npara la comision 3 de Tecno multimedia  \nprofesor: David Bedoian \n\npresiona ENTER para reiniciar  "};
 Creditos(){
 
 }
  void Credito(){
    push();
    background(0);
    textSize(20);
    fill(255);
    text(cred[0],110,100);
    pop();
    
    
  }
  void pasoCreditos(){
    
  }
}
