void setup() {
  size(400, 400);
  textSize(60);
  
}
void draw() {
  //fondo
  background(34,12,240);
  //linea amarilla  
  fill(255,255,0);
  rect(0,130,400,150);
  //grosor de lineas 
  strokeWeight(5);
  //nombre
  fill(255,255,0);
  text("Abel",130,350);
  //cabeza
   fill(252,227,189);
   rect(120,80,130,160,50 );
   //pelo
   fill(49,18,0);
   rect(120,80,130,40,10);   
   line(220,80,110,130);   
   line(220,80,107,135);   
   line(220,80,109,125);   
   line(220,80,111,120);   
   line(220,80,113,115);   
   line(220,80,115,110);   
   line(220,80,117,105);   
   line(220,80,119,100);   
   line(220,80,120,95);   
   line(220,80,122,90);   
   line(220,80,124,85);
   line(220,80,105,130);
   //cejas
   fill(113,45,6);
   triangle(120,140,125,135,160,140);
   triangle(219,140,216,135,180,140);
   //nariz
   line(170,150,160,180);
   line(160,180,165,185);
  //barba
  fill(113,45,6);
  triangle(165,200,130,200,165,190);
  triangle(175,200,212,200,175,190);
  //barba2
  fill(113,45,6);
  triangle(160,210,180,210,170,225);
  
}
