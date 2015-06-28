int x=10;
int y=10;

int i;
int j;
void setup(){
size(800,600);
background(255);
}

void draw(){
  ellipse(x,y,20,20);
  x= x+20;
    for(i=0;i<120;i++){
    if(x>width){
      x=10;
      y=y+20;
    }
  }
}
