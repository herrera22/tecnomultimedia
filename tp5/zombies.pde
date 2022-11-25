//clase del array zombie
class Zombies{
  int cant0=2;
  PImage foto;
  PImage foto1;
  int posx;
  int posy;
  int tam1;
  int tam2;
  
 Zombies(PImage z,int posx_ , int posy_ , int tam1_ , int tam2_){
   foto=z;
   foto=z;
   posx=posx_;
   posy=posy_;
   tam1=tam1_;
   tam2=tam2_;
   }
   void zombie(){
    image(foto,posx,posy,tam1,tam2);
   }
   void zombie1(){
     image(foto, posx,posy,tam1,tam2); 
   }
}
