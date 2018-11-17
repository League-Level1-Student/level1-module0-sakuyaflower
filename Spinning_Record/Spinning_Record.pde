PImage pictureOfrecord;  
void setup(){
size(600,600);
pictureOfrecord = loadImage("download.jpg");
pictureOfrecord.resize(520,560);
}
void draw(){
  image(pictureOfrecord,20,10 ); 
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}