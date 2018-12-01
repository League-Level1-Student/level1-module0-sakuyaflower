int y = 0;
int randomNumber = (int) random(width);
int score = 0;
void checkCatch(int x){
     if (x > mouseX && x < mouseX+100)
          score++;
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); }
void setup(){
  size(600, 600);
  
}
void draw(){
  background(180, 46, 124);
  fill(8, 46, 234);
stroke(34, 124, 97);
ellipse(randomNumber, y, 25, 25);
y+=10;
rect(mouseX, 500, 50, 50);
fill(243,243,250);
if(y==600){
y=0;
checkCatch(randomNumber);
randomNumber=(int) random(width); 
}

fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);

}