int x = 376;
int y = 300;
int randomNumber = (int) random(width);
int speed = 10;
void setup(){
  size(600, 600);

}
void draw(){
 background(45, 12, 156);
  fill(250, 11, 150);
stroke(250, 11, 250);
ellipse(x, y, 90, 90);
x+= speed;
if(x>width){
  speed=-speed;
}
else if(x<0){
 speed=-speed; 
 if(y>height){
   speed=-speed;
 }
 else if(y<0){
   speed=-speed;
 }
}
}