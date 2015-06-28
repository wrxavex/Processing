// 宣告
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
  // 讓圓的x軸往右移
  x= x+20;
  	//用迴圈的方式產生足夠的圓
    for(i=0;i<120;i++){
    	if(x>width){
      		x=10;
      		y=y+20;
    	}
  }
}
