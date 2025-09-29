float x,y;
void setup(){
  x=width/2;
  y=height/2;
  background (#F52C2C);
}
  void draw(){
ellipse(x,y,20,20);
  }
  void mousePressed (){
    x=mouseX;
    y=mouseY;
  }
