// 王連晟老師經典範例
// 用超多個超過螢幕大的圓形排成一個圓，然後兩點之間連結黑線，用迴圈加速執行，達成白至黑的過程

float x1, y1, x2, y2, R, theta1, theta2;
float rr;

void setup(){
  size(800,800,P3D);
  background(255);
  R=700;
}
void draw(){
 for ( int i =0; i<384; i=i+1){
  theta1 = random(360);
  theta2 = random(360);
  x1 = width/2 + R*cos(theta1);
  y1 = height/2 + R*sin(theta1);
  x2 = width/2 + R*cos(theta2);
  y2 = height/2 + R*sin(theta2);
  if(true){
    stroke(0,127);
  }
  else{
    stroke(255,127);
  }
  //stroke(random(255),random(255),random(255),150);
  line(x1,y1,x2,y2);
 }

  if(keyPressed){

    // 重置背景
    if(key == 'a'){
    background(255);
    }

    // 隨機橫條
    if(key == 'b'){
      fill(random(255));
      rect(random(width),0,random(2,18),height);
    }

    // 隨機直條
    if(key == 'c'){
      fill(random(255));
      rect(0,random(height),width,random(2,18));
    }
  }

  // 用亂數種子決定要不要執行函式
  rr = random(100);
  if(rr > 90){
    Xline();
  }
  if(rr < 5){
    Hline();
  }



}

// 橫線函式
void Xline(){
  fill(random(255));
  rect(random(width),0,random(2,18),height);

}

// 直線函式
void Hline(){
  fill(random(255));
  rect(0,random(height),width,random(2,18));

}
