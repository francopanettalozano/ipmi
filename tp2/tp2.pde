//Franco Panetta Lozano
//Legajo:94806/7
//comision 5


PImage portada;
PImage boton_inicial;
PImage onepiece2;
PImage onepiece1;
PImage onepiece4;
PImage boton_final;
String texto1 = "Este manga narra las aventuras de Monkey D. Luffy, un joven valiente y decidido que sueña con convertirse en el Rey de los Piratas";
String texto2 = "El gran objetivo de Luffy es encontrar el misterioso tesoro conocido como el One Piece";
String texto3 = "Es asi como a lo largo de su aventura va reclutando compañeros para complir sus sueños y objetivos";
PFont font;
int pantalla = 0;
int xTexto = 0;
int velocidadTexto = 1;

void setup() {
  background (255);
  size(640, 480);
  font = loadFont("Cambria-36.vlw");
  textFont(font);
  portada = loadImage("portada.jpg");
  boton_inicial = loadImage("boton_iniciar.png");
  onepiece2 = loadImage("onepiece2.jpg");
  onepiece1 = loadImage("onepiece1.jpg");
  onepiece4 = loadImage("onepiece4.jpg");
  boton_final = loadImage("boton_final.png");
}

void draw() {
  background(0);

  if (pantalla == 0) {

    image(portada, 0, 0, width, height);
    image(boton_inicial, width - 120, height - 70, 100, 50);
  } else {

    if (pantalla == 1) {
      background(0);
      image(onepiece2, 0, 0, 640, 480);
      fill(242, 12, 12);
      text(texto1, xTexto, 30);
      xTexto -= velocidadTexto;
      if (xTexto < -textWidth(texto1)) {
        pantalla = 2;
        xTexto = width;
      }
    } else if (pantalla == 2) {
      background(0);
      image(onepiece1, 0, 0, 640, 480);
      fill(242, 12, 12);
      text(texto2, xTexto, 30);
      xTexto -= velocidadTexto;
      if (xTexto < -textWidth(texto2)) {
        pantalla = 3;
        xTexto = width;
      }
    } else if (pantalla == 3) {
      background(0);
      image(onepiece4, 0, 0, 640, 480);
      image(boton_final, width - 120, height - 70, 100, 50);
      fill(242, 12, 12);
      text(texto3, xTexto, 30);
      xTexto -= velocidadTexto;
      if (xTexto < -textWidth(texto3)) {
        xTexto = width;
      }
    }
  }
}

void mousePressed() {
  if (pantalla == 0 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 70 && mouseY < height - 20) {

    pantalla = 1;
  } else if (pantalla == 3 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 70 && mouseY < height - 20) {

    pantalla = 0;
  }
}
