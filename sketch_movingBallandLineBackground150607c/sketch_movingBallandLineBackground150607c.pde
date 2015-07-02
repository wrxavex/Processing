// 宣告變數
int i = 0;      // 迴圈次數用 x
int j = 0;      // 迴圈次數用 y
int delta;      // 用來指定線來間隔用的
int move = 0;   // 在這個範例是指定方向用的
void setup() {
  size(600, 600, P2D);
  background(166, 164, 152);
  frameRate(24);  // 設定每秒更新次數
}


void draw() {
  stroke(127);
  strokeWeight(1);

  fill(191, 180, 174, 170);
  stroke(140, 130, 125);
  print("delta=",delta,"\n");  // 顯示 delta 變數
  print("move=",move,"\n");    // 顯示 移動模式

  // 判斷 移動模式 是 1 的話 delta 值 用扣的
  if(move == 1){
    delta-=5;
  }

  // 判斷 移動模式 是 10 的話 delta 值 用加的
  if(move ==0){
    delta+=5;
  }


  if(delta > 50 && move == 0){
    move =1;
  }
  if(delta< -50 && move == 1){
    move =0;
  }


// 判斷滑鼠事件
  if (mousePressed) {
    rect(mouseX-50+delta, mouseY-50+delta, 100, 100, 40, 20, 10, 10);
  } else {
    ellipse(mouseX, mouseY, 100, 100);
  }


// 判斷鍵盤事件
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
