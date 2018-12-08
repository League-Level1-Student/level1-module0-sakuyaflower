int x = 1;
int y = 1;
int w = 300;
void setup(){
  size(600, 600);
background(#6157FC);

}
void draw(){
for(int i = 0; i<w; i++){
  fill(random(255),random(255),random(255));
  ellipse(getWormX(i),getWormY(i),20,20);
  x += 1;
  y += 1;
}
if(mousePressed){
w +=50;
}
makeMagical();
}
float frequency = .001;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

 