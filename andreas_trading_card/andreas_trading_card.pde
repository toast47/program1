PImage box1;
PImage box2;
PImage box3;
String name = "cardboard box";
void setup(){
size(500,500);
box1=loadImage("boxgg.jpeg");
box2=loadImage("box gg.jpeg");
box2=loadImage("box gggg.png");
}
void draw (){
fill(500,500,500);
rect (100,50,300,400);
rect (100,50,300,190);
fill(147,74,47);
rect(200,100,100,100);
text(name, 110,260);
text("boxing 20 damage", 110,300);
text("box cut 40 damage", 110,340);
text("9/22 2025", 110,440);}
