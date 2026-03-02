float[]   xPositions = new float[9];
float[]   yPositions = new float[9];
boolean[] moleUp = new boolean [9];
int score =0;
void setup(){
size (600,600);
int index = 0;
for(int i = 0; i < 3; i++){
  for(int k = 0; k <3; k++){
xPositions[index] = 100 + k *200;
yPositions[index] = 100 + i *200;
moleUp[index] = false;
    index++;
  }
}
}
void draw(){


background(100,100,100);
for(int i = 0; i<9;i++){
  fill(50,25,0);
  ellipse(xPositions[i],yPositions [i], 120,60);
  
  if (moleUp[i]){
    fill(150,100,50);
    ellipse (xPositions[i],yPositions[i],80,80);
  }
  
}

if(frameCount % 60 == 0){
  int randomIndex= (int) random(9);
  moleUp[randomIndex]= !moleUp[randomIndex];
}
fill(255);
textSize(32);
text(score,20,40);
ellipse(8,8,8,8);
loadImage("Close-up-Eastern-mole.jpeg");
      }
      void mousePressed() {
        for (int i = 0; i < 3; i++){
          float d = dist(mouseX, mouseY, xPositions [i], yPositions [i]);
          if (moleUp[i] && d < 40) {
            moleUp[i] = false;
            score++;
          }
        }
      }
          
          
          
          
