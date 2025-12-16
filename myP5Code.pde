//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
  // larger canvas for improved composition
  size(500, 500);
  background(255);
}


//🟢Draw Procedure - Runs on Repeat
void draw(){
  // faint background to create a subtle motion trail effect
  background(255, 255, 255, 20);

  // Central Circle 
  // Red quadrant
  fill(204, 43, 43);
  noStroke();
  arc(width/2, height/2, 300, 300, PI, 3*PI/2, PIE);
  
  // Green quadrant
  fill(65, 153, 55);
  noStroke();
  arc(width/2, height/2, 300, 300, 3*PI/2, TWO_PI, PIE);
  
  // Orange quadrant
  fill(217, 189, 50);
  noStroke();
  arc(width/2, height/2, 300, 300, PI/2, PI, PIE);
  
  // Purple quadrant
  fill(148, 0, 211);
  noStroke();
  arc(width/2, height/2, 300, 300, 0, PI/2, PIE);

  // Pink rectangle overlaying the circle (drawn last so it appears on top)
  fill(255, 38, 179); // pink
  noStroke();
  rect(width/2 - 40, height/2 - 150, 80, 170);
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

var fillR = 255;
var fillG = 0;
var fillB = 255;

//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
// When the user clicks, draw a small marker and show coordinates
void mousePressed(){
  fill(fillR, fillG, fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  String myText = "x: " + mouseX + " y: " + mouseY;
  fill(0);
  text(myText, mouseX + 15, mouseY);
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
// Key controls: clear canvas or change marker color
void keyPressed(){
  if(key == 'c' || key == 'C'){
    // clear the canvas
    background(255);
  }

  if(key == 'r' || key == 'R'){
    // change marker color toward red
    fillR = (int)random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    // change marker color toward green
    fillR = 0;
    fillG = (int)random(100,255);
    fillB = 0;
  }
}

