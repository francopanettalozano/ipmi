    //Franco Panetta Lozano
    //Legajo: 94806/7
    // https://youtu.be/n5mnRUi-pwY

 

PImage triangulos;         //imagen 
int numLineas = 50;        // Número de líneas (triángulos) a dibujar
color colororiginalarriba, colororiginalabajo;  // Colores originales de los triángulos
color colorarriba, colorabajo;  // Colores modificados de los triángulos

void setup() {
  size(800, 400);  // Tamaño del lienzo
  triangulos = loadImage("triangulos.png"); // carga imagen sobre la obra
  colororiginalarriba = color(255);         // Color original para triángulos superiores (blanco)
  colororiginalabajo = color(0);    // Color original para triángulos inferiores (negro)
  colorarriba = colororiginalarriba;
  colorabajo = colororiginalabajo;
}

void draw() {
  background(0);  // Limpiar el fondo con negro

  // Guardar el estado actual de la matriz de transformación
  pushMatrix();
  translate(width/2, height/2); // translada la obra a la parte derecha del lienzo 
  translate(-width/2, -height/2); // translada la imagen de la obra a la parte izquierda de la pantalla
  
  // Calcular el espaciado entre triángulos
  float spacio = width / (float) numLineas;
  
  // Repite a través de cada línea (triángulo)
  for (int i = 0; i < numLineas; i++) {
    float x1 = i * spacio;         // Coordenada x izquierda del triángulo
    float x2 = (i + 1) * spacio;   // Coordenada x derecha del triángulo
    
    // Rellenar el triángulo superior con el color modificado
    fill(colorarriba);
    beginShape();
    vertex(x1, 0);                              // Vértice superior izquierdo
    vertex(x2, 0);                              // Vértice superior derecho
    vertex(map(i, 0, numLineas - 1, 0, width), height);  // Vértice inferior (centrado horizontalmente)
    endShape(CLOSE);
    
    // Rellenar el triángulo inferior con el color modificado
    fill(colorabajo);
    beginShape();
    vertex(map(i, 0, numLineas - 1, 0, width), height);  // Vértice inferior (centrado horizontalmente)
    vertex(x1, height);                         // Vértice inferior izquierdo
    vertex(x2, height);                         // Vértice inferior derecho
    endShape(CLOSE);
  }
  
  // Restaurar el estado anterior de la matriz de transformación
  popMatrix();
  
  // Dibujar la imagen encima de los triángulos
  image(triangulos, 0, 0, 400, 400);
}

// Interactividad con el mouse: Cambiar colores de los triángulos según posición vertical del mouse
void mouseMoved() {
  float mouseYPresente = mouseY / (float) height; 
  colorarriba = lerpColor(colororiginalarriba, color(255, 0, 0), mouseYPresente);  // Interpolación lineal entre blanco y rojo
}

// Función para reiniciar el programa al presionar la tecla 'r'
void keyPressed() {
  if (key == 'r') {
    resetearColores();
  }
}

// Función para restablecer los colores originales de los triángulos
void resetearColores() {
 colorarriba = colororiginalarriba;
  }
