class Escena {
  private Tablero tablero;
  private Marcador marcador;
  private Jugador j1;
  private Jugador j2;
  
  public Escena() {
    int alturaMarcador;
    
    // Inicializacion del Marcador
    alturaMarcador = 100;
    marcador = new Marcador(0, 0, color(GRIS), width, alturaMarcador);
    
    // Inicializacion del Tablero
    tablero = new Tablero(0, alturaMarcador, color(NEGRO), width, height - alturaMarcador);
    
    // Inicializacion de los jugadores
    j1 = new Jugador("A");
    j2 = new Jugador("B");
    
    // Colocar los Jugadores dentro de las paletas
    tablero.paletas[0].jugador = j1;
    tablero.paletas[1].jugador = j2;  
  }

  public void intro() {
      // TODO implement here
  }

  public void play() {
    tablero.dibujar();
    marcador.dibujar();
  }

  public void gameOver() {
      // TODO implement here
  }

}