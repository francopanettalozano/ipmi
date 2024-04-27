//tp1 comision 5
//Panetta Lozano Franco
//legajo: 94806/7

PImage karotte;


void setup(){
size (800, 400);
background(255);
karotte = loadImage("karotte1.png");

}

void draw(){

  background(255);
    image(karotte, 400, 0, 400, 400);
    
  fill(42,147,19);
  stroke(39,200,19);
    rect(165, 30, 20, 110);
    rect(215,50,20,110);
    rect(190,10,20,110);
    
  fill(252,122,20);
  stroke(252,122,20);
  arc(200, 150, 178, 80, 200, 400);
  triangle(110, 150, 290, 150, 200, 400);

stroke(255,255,255);
line(273,200,200,200 );
line(137,230,170,230);
line(250,260,200,260);
line(169,310,200,310);
line(215,360,200,360);

  }
  
  
  



  
 
