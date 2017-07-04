Escena escena;

color NEGRO = 0;
color GRIS = 127;
color BLANCO = 255;

void setup() {
  size(600, 600);
  frameRate(30);
  
  // Inicializacion de objetos
  escena = new Escena();
}

void draw() {
  escena.play();
}