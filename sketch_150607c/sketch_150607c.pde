int i = 0;
int j = 0;
int delta;
int move = 0;
void setup() {
  size(600, 600, P2D);
  background(166, 164, 152);
  frameRate(24);
}


void draw() {
  stroke(127);
  strokeWeight(1);

  fill(191, 180, 174, 170);
  stroke(140, 130, 125);
  print("delta=",delta,"\n");
  print("move=",move,"\n");
  if(move == 1){
    delta-=5;
  }
  if(move ==0){
    delta+=5;
  }
  
  
  if(delta > 50 && move == 0){
    move =1;
  }
  if(delta< -50 && move == 1){
    move =0;
  }
  
  if (mousePressed) {
    rect(mouseX-50+delta, mouseY-50+delta, 100, 100, 40, 20, 10, 10);
  } else {
    ellipse(mouseX, mouseY, 100, 100);
  }

  if (keyPressed) {
    if(key == 'e'){
    reset();
    }
  }
  
  if (i<600) {
    i = i+10;
    gridline(i);
  } else {
    if (j<600) {
      j = j+10;
      gridline2(j);
    }
  }
}

void gridline(int gap) {
  line(i, 0, i, 600);
}

void gridline2(int gap2) {
  line(0, j, 600, j);
}


// for(int i = 0 ; i<600; i= i + 10){
// line(i,0,i,600);
// line(0,i,600,i);
// }


void reset() {
  i=0;
  j=0;
  background(166, 164, 152);
}
