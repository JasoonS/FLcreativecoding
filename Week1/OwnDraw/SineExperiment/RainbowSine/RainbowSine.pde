float a = 0.0;
float inc = TWO_PI/50.0;
int i = 1;
float ofset = TWO_PI/3.0;
void setup() {
  size(470, 160);
  background(0);
  rectMode(RADIUS);
  frameRate(100);
}

void draw(){
  if (mousePressed) {
    i += 2;
    //the rectangle, this gradually fades out the background
    stroke(100, 0);
    fill(200, 7);
    rect(i + 3, 80, 2, 80);//parameters: x, y, width, height 
    //longest line, 
    stroke(122 + sin(a*0.2) * 122,122 + sin(a*0.2+ofset) * 122,122 + sin(a*0.2+2*ofset) * 122);
    line(i, 80, i, 80 + sin(a) * 80.0);
    //middle line, inverted
    stroke(100 + sin(a*0.2) * 100, 100 + sin(a*0.2+ofset) * 100, 100 + sin(a*0.2+2*ofset) * 100);
    line(i, 80, i, 80 - sin(a) * 60.0);
    //short line
    stroke(80 + sin(a*0.2) * 80, 80 + sin(a*0.2+ofset) * 80, 80 + sin(a*0.2+2*ofset) * 80);
    line(i, 80, i, 80 + sin(a) * 40.0);
    //shortest line, inverted
    stroke(80 + sin(a*0.2) * 80, 80 + sin(a*0.2+ofset) * 80, 80 + sin(a*0.2+2*ofset) * 80);
    line(i, 80, i, 80 + sin(a) * 40.0);
    a = a + inc;
    if(i >= 464){
      i = 1; 
    }
  }
      // save your drawing when you press keyboard 's'
  if (keyPressed == true && key=='s') {
    saveFrame("RanbowSine.jpg");
  }

  // erase your drawing when you press keyboard 'r'
  if (keyPressed == true && key == 'r') {
    background(255);
  }
}
