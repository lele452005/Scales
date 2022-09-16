public void setup() {
  size(400, 400);
}

void draw(){
  for (int y = 1; y<430; y+=50){
    for (int x=5; x<430; x+=40){
       scale(x, y);
    }
  }
}
  boolean shift = true;
void scale(int x, int y){
  noStroke();
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  if (shift == true){
    ellipse(x, y, 50, 50);
    rect (x, y+20, 40, 40);
  }
   else{
    ellipse(x, y, 50, 50);
    rect (x, y-10, 40, 40);
  }
  if (shift == true){
    shift = false;
  }
  else{
    shift = true;
  }
}
