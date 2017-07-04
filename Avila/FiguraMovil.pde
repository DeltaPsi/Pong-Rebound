
abstract public class FiguraMovil extends Figura{

  protected float longitud;
  protected int pixelPorFrameX;
  protected int pixelPorFrameY;
  protected float orientacionX;
  protected float orientacionY;
  
  public FiguraMovil(float posicionX, float posicionY, color relleno, float longitud) {
    super(posicionX, posicionY, relleno);
    
    this.longitud = longitud;
    
    // Inicializacion manual
    this.pixelPorFrameX = 1;
    this.pixelPorFrameY = 1;
    this.orientacionX = 1;
    this.orientacionY = 1;
  }

  abstract public void mover();

  abstract public void dibujar();

}