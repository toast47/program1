int score = 0;
int [] alienX = {60,110,160,220,270};
boolean[] isAlive = {true,true,true,true,true};
int spaceshipX;
int bulletX = -10;
int bulletY = -10;
boolean bulletFired=false;
void setup(){
size(1000,780);
 spaceshipX= width/3;
}
void draw(){
background(#0822A0);
fill(#0A32F5);
rect(spaceshipX, height-40,160,60);

fill(#F59B0A);
for(int i=0; i<5; i++){
  if (isAlive[i]){
  rect(i*60+50,50,50,50);

  }
}

if(bulletFired){
  fill(0);
  rect(bulletX, bulletY,5,10);
  bulletY -=6;
  if(bulletY <0 ){
    bulletFired=false;
     fill(255);
  }
  for (int i = 0; i<5; i++){
    if(isAlive[i]){
      if(bulletX > alienX[i] && bulletX < alienX[i]+40 &&
      bulletY > 50 && bulletY < 90){
        isAlive[i] = false;
        bulletFired = false;
        score += 1;
      }
    }
  }
}
 textSize(20);
  text("Score:    "+ score, 10,25);
}
void keyPressed(){
  if(keyCode == LEFT && spaceshipX>0){
    spaceshipX -=10;
  }else if(keyCode == RIGHT && spaceshipX < width-40){
    spaceshipX +=10;
  }else if(key == ' '){
    if(!bulletFired){
      bulletFired = true;
      bulletX = spaceshipX + 20;
      bulletY = height - 40;
    }
  }
}
