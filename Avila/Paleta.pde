
public class Paleta extends FiguraMovil {
  private Jugador jugador;
    
  public Paleta(float posicionX, float posicionY, color relleno, float longitud, Jugador jugador) {
    super(posicionX, posicionY, relleno, longitud); 
    
    this.jugador = jugador;
  }  

  public void dibujar() {
    strokeWeight(10);
    stroke(this.relleno);
    line(this.posicionX, this.posicionY, this.posicionX, this.posicionY + this.longitud);
  }
  
  public void mover() {
    
  }
}