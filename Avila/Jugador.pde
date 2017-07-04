
public class Jugador {

  public Jugador(String nombre) {
    this.nombre = nombre;
    this.puntos = 0;
  }

  private int puntos;
  private String nombre;

  public int getPuntos() {
      return this.puntos;
  }

  public void setPuntos(int puntos) {
      this.puntos = puntos;
  }
  
  public void incrementar() {
    this.puntos++;
  }

}