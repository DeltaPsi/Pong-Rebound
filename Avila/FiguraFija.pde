
abstract public class FiguraFija extends Figura {
  protected float anchura;
  protected float altura;
  
  public FiguraFija(float posicionX, float posicionY, color relleno, float anchura, float altura) {
    super(posicionX, posicionY, relleno);
    
    this.anchura = anchura;
    this.altura = altura;
  }

  // El metodo continua abstract, la clase hija lo implementara
  public abstract void dibujar();
}