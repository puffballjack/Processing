int r = 5, g = 5, b = 5;
void setup(){
  size(1000, 800);
  background(255);
}

void draw(){
  fill(r, g, b);
  noStroke();
  rect(0, 0, 100, 12);
  rect(width, 0, -50, 12);
  fill(255);
  text((r + "," + g + "," + b), 10, 10);
  text(sw, width - 25, 10);
  while(key == 'r'){
    r++;
    key = ' ';
      if(r > 255){
      r = 0;
    }
  }
  while(key == 'g'){
    g++;
    key = ' ';
    if(g > 255){
      g = 0;
    }
  }
  while(key == 'b'){
    b++;
    key = ' ';
    if(b > 255){
      b = 0;
    }
  }
   while(key == 'w'){
    sw++;
    key = ' ';
    if(sw > 255){
      sw = 0;
    }
   }
    while(key == 's'){
   
      
      sw = sw - 1;
    key = ' ';
    if(sw < 0){
      sw = 0;
    }
  }
}


void mouseClicked(){
    background(0);
    if(mouseButton == RIGHT) {
    background(255); 
   }
}

int sw = 10;

void mouseDragged() {
 if(mouseButton == LEFT) {
   strokeWeight(sw);
   stroke(r,g,b);
   line(pmouseX,pmouseY,mouseX,mouseY);
 }
}

//void keyPressed(){
  //if(key == 'r'){
    //r++;
    //if(r > 255){
      //r = 0;
    //}
  //}  
//}