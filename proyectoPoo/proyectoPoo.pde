int posicionX;
int posicionY;
int velocidadX;
int velocidadY;
int posicionbarra1=0;
int posicionbarra2=0;
boolean a,s,izquierda,derecha;
void setup(){
size(500,500);
posicionX=100;
posicionY=100;
velocidadX=10;
velocidadY=10;
}
void draw(){
background(0,0,0);
noStroke();
fill(255,0,0);
ellipse(posicionX,posicionY,25,25);//pelota
rect(posicionbarra1,420,125,25);
rect(posicionbarra2,420,125,25);
posicionX=posicionX+velocidadX;//velocidad en que se mueve hacia la derecha el balon.
posicionY=posicionY+velocidadY;//velocidad en que se mueve hacia la derecha el balon.

if(posicionX<posicionbarra1+125&&posicionY>420&&posicionY<420+25){
  velocidadY=velocidadY*-1;
 }
 if(posicionX>posicionbarra2+125&&posicionY>420&&posicionY<420+25){
  velocidadY=velocidadY*-1;

 }





if(posicionX>width){
   velocidadX=-15;}
if(posicionX<25){
   velocidadX=15;
}
if(posicionY>height){
   velocidadY=-15;}
if(posicionY<0){
   velocidadY=15;
}

if(a){
posicionbarra1=posicionbarra1-10;
}
if(s){
posicionbarra1=posicionbarra1+10;
}
if(izquierda){
posicionbarra2=posicionbarra2-10;
}
if(derecha){
posicionbarra2=posicionbarra2+10;
}




}
void keyPressed(){
  if(key=='a')
      a=true;
  if(key=='s')
      s=true;
  if(keyCode==LEFT)
      izquierda=true;
  if(keyCode==RIGHT)
      derecha=true;
}     
void keyReleased(){
  if(key=='a')
      a=false;
  if(key=='s')
      s=false;
  if(keyCode==LEFT)
      izquierda=false;
  if(keyCode==RIGHT)
      derecha=false;
}