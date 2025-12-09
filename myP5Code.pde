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

  //Shape 1: Red Circle 
  //Shape 1: Coral Circle 
  // Using RGB: coral (warm accent)
  fill(255, 127, 80);
  stroke(50);
  strokeWeight(2);
  ellipse(120, 150, 150, 150);

  // Shape 2: Teal Square
  // Using RGB: teal (cool accent)
  fill(0, 150, 136);
  stroke(20);
  strokeWeight(6);
  rect(260, 80, 150, 150, 12);

  // (triangle and the small decorative circle removed)
  // Shape 4: Central Purple Circle
  // Placed in the middle of the right box (canvas)
  fill(148, 0, 211); // deep purple
  stroke(40);
  strokeWeight(3);
  // increase the central purple circle size for stronger emphasis
  ellipse(width/2, height/2, 200, 200);
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

