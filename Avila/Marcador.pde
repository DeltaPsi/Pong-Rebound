
public class Marcador extends FiguraFija {
  private int[] puntajes;
  
  public Marcador(float posicionX, float posicionY, color relleno, float anchura, float altura) {
    super(posicionX, posicionY, relleno, anchura, altura);
    
    this.puntajes = new int[2];
    this.puntajes[0] = 0;
    this.puntajes[1] = 0;
  }

  public void actualizar(Jugador[] jugadores) {
      this.puntajes[0] = jugadores[0].puntos;
      this.puntajes[1] = jugadores[1].puntos;
  }

  public void dibujar() {
    // Para que no se observe el trazo del rectangulo
    noStroke();
    // Rellena de color la figura
    fill(this.relleno);
    // Dibujo del rectangulo
    rect (this.posicionX, this.posicionY, this.anchura, this.altura);
  }

}