import ddf.minim.*;  
Minim minim;
AudioSample sound;
PImage backgroundImage;
int x = 376;
int y = 300;
int randomNumber = (int) random(width);
int speedX = 10;
int speedY = 20;
void setup(){
  size(600, 600);
minim = new Minim (this);
sound = minim.loadSample("water.aiff", 128);
backgroundImage = loadImage("hellobob.jpg");

}
void draw(){
image(backgroundImage, 0, 0);
image(backgroundImage, 0, 0, width, height);
fill(#A6A2E8);
rect(mouseX, 550, 50, 40);
  fill(250, 11, 150);
stroke(250, 11, 250);
ellipse(x, y, 90, 90);
x+= speedX;
y+= -speedY;
if(x>width){
 speedX=-speedX;
 sound.trigger();
}
else if(x<0){
 speedX=-speedX;

}
 if(y>height){
   speedY= -speedY;
   sound.trigger();
 }
  else if(y<0){
   speedY= -speedY;
 }

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}