abstract public class Figura {
  protected float posicionX;
  protected float posicionY;
  protected color relleno;
  
  public Figura (float posX, float posY, color relleno) {
    this.posicionX = posX;
    this.posicionY = posY;
    this.relleno = relleno;
  }
  
  abstract void dibujar();

}