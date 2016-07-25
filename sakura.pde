/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

PImage f1, f2; 

PImage f1s1, f1s2, f1s3, f1m1, f1m2, f1l1;
PImage f2xs1, f2xs2, f2s1, f2s2, f2m1, f2l1;
PImage f3s1, f3s2, f3m1, f3m2, f3m3, f3l1, f3l2, f3l3;
PImage f4s1, f4s2, f4s3, f4m1, f4l1, f4x1;
PImage f5s1, f5s2, f5m1, f5l1, f5x1;
PImage f6m1, f6l1;
PImage f7l1;
PImage f8s1, f8m1, f8l1, f8x1, f8x2, f8x3, f8x4;
PImage f9s1, f9s2, f9m1, f9m2, f9l1, f9x1;
PImage f10s1, f10m1, f10l1, f10x1;
PImage f11l1, f11x1, f11x2;


PImage b[] = new PImage[22];

color bc[] = new color[22];

Movie movie1;
Movie movie2;
Movie movie3;

int i;
int count;
int count1;
int count2;
int flower_pos_x;
int flower_pos_y;

float f1_size;
int f2_size;
float bk_size;

float angle;
float rotate_direction;

int f1_pos_x;
int f1_pos_y;
int f2_pos_x;
int f2_pos_y;
int tint_value;

void setup() {
  fullScreen(P2D, SPAN);

  // size(2560, 800, P3D);
  background(0);
  noStroke();
  imageMode(CENTER);
  rectMode(CENTER);
  f1 = loadImage("flower1.png");
  f2 = loadImage("flower2.png");


  f1s1 = loadImage("f1/60/1.png");
  f1s2 = loadImage("f1/60/2.png");
  f1s3 = loadImage("f1/60/3.png");
  f1m1 = loadImage("f1/80/1.png");
  f1m2 = loadImage("f1/80/2.png");
  f1l1 = loadImage("f1/100/1.png");

  f2xs1 = loadImage("f2/30/1.png");
  f2xs2 = loadImage("f2/30/2.png");
  f2s1 = loadImage("f2/60/1.png");
  f2s2 = loadImage("f2/60/2.png");
  f2m1 = loadImage("f2/90/1.png");
  f2l1 = loadImage("f2/100/1.png");

  f3s1 = loadImage("f3/30/1.png");
  f3s2 = loadImage("f3/30/2.png");
  f3m1 = loadImage("f3/50/1.png");
  f3m2 = loadImage("f3/50/2.png");
  f3m3 = loadImage("f3/50/3.png");
  f3l1 = loadImage("f3/100/1.png");
  f3l2 = loadImage("f3/100/2.png");
  f3l3 = loadImage("f3/100/3.png");

  f4s1 = loadImage("f4/30/1.png");
  f4s2 = loadImage("f4/30/2.png");
  f4s3 = loadImage("f4/30/3.png");
  f4m1 = loadImage("f4/50/1.png");
  f4l1 = loadImage("f4/100/1.png");
  f4x1 = loadImage("f4/x/1.png");

  f5s1 = loadImage("f5/30/1.png");
  f5s2 = loadImage("f5/30/2.png");
  f5m1 = loadImage("f5/60/1.png");
  f5l1 = loadImage("f5/100/1.png");
  f5x1 = loadImage("f5/x/1.png");

  f6m1 = loadImage("f6/60/1.png");
  f6l1 = loadImage("f6/100/1.png");

  f7l1 = loadImage("f7/1.png");

  f8s1 = loadImage("f8/30/1.png");
  f8m1 = loadImage("f8/60/1.png");
  f8l1 = loadImage("f8/100/1.png");
  f8x1 = loadImage("f8/x/1.png");
  f8x2 = loadImage("f8/x/2.png");
  f8x3 = loadImage("f8/x/3.png");
  f8x4 = loadImage("f8/x/4.png");

  f9s1 = loadImage("f9/30/1.png");
  f9s2 = loadImage("f9/30/2.png");
  f9m1 = loadImage("f9/60/1.png");
  f9m2 = loadImage("f9/60/2.png");
  f9l1 = loadImage("f9/90/1.png");
  f9x1 = loadImage("f9/100/1.png");

  f10s1 = loadImage("f10/30/1.png");
  f10m1 = loadImage("f10/60/1.png");
  f10l1 = loadImage("f10/90/1.png");
  f10x1 = loadImage("f10/100/1.png");

  f11l1 = loadImage("f11/100/1.png");
  f11x1 = loadImage("f11/x/1.png");
  f11x2 = loadImage("f11/x/2.png");

  b[0] = loadImage("b1.png");
  b[1] = loadImage("b2.png");
  b[2] = loadImage("b3.png");
  b[3] = loadImage("b4.png");
  b[4] = loadImage("b5.png");
  b[5] = loadImage("b6.png");
  b[6] = loadImage("b7.png");
  b[7] = loadImage("b8.png");
  b[8] = loadImage("b9.png");
  b[9] = loadImage("b10.png");
  b[10] = loadImage("b11.png");
  b[11] = loadImage("b11.png");
  b[12] = loadImage("b10.png");
  b[13] = loadImage("b9.png");
  b[14] = loadImage("b8.png");
  b[15] = loadImage("b7.png");
  b[16] = loadImage("b6.png");
  b[17] = loadImage("b5.png");
  b[18] = loadImage("b4.png");
  b[19] = loadImage("b3.png");
  b[20] = loadImage("b2.png");
  b[21] = loadImage("b1.png");

  bc[0] = #5C5D5D;
  bc[1] = #898989;
  bc[2] = #616b7d;
  bc[3] = #5480b3;
  bc[4] = #645459;
  bc[5] = #dcdddd;
  bc[6] = #6b6061;
  bc[7] = #4180bc;
  bc[8] = #b5b6b6;
  bc[9] = #dcdddd;
  bc[10] = #616b7d;

  f1_size = 200;
  f2_size = 200;

  // Load and play the video in a loop
  movie1 = new Movie(this, "flower3.mov");
  movie3 = new Movie(this, "flower1-1.mov");
  movie1.play();
  movie3.loop();
}

void movieEvent(Movie m) {
  if (m == movie1) {
    movie1.read();
  } else if (m == movie3) {
    movie3.read();
  }
}

void draw() {

  background(0);
  fill(bc[0]);
  rect(2324, 174, 198, 343);
  image(b[0], 2324, 174);      //  1
  image(f1s1, 2324, 174+30, 120, 120);
  image(f1s2, 2324, 174+60, 120, 120);
  image(f1s3, 2324, 174-30, 120, 120);
  image(f1m1, 2324, 174+15, 160, 160);
  image(f1m2, 2324, 174-15, 160, 160);
  image(f1l1, 2324, 174-30, 198, 198);


  image(movie3, 2324, 174, 256, 256);



  fill(bc[1]);
  rect(2443, 628, 198, 343);
  image(b[1], 2443, 628);      //  2
  image(f2xs1, 2443, 628+20, 60, 60);
  image(f2xs2, 2443, 628+40, 60, 60);
  image(f2s1, 2443, 628+60, 120, 120);
  image(f2s2, 2443, 628+80, 120, 120);
  image(f2m1, 2443, 628-40, 180, 180);
  image(f2l1, 2443, 628-80, 198, 198);


  fill(bc[2]);
  rect(2225, 533, 198, 343);
  image(b[2], 2225, 533);      //  3
  image(f3s1, 2225, 533+40, 60, 60);
  image(f3s2, 2225, 533+80, 60, 60);
  image(f3m1, 2225, 533-20, 100, 100);
  image(f3m2, 2225, 533-40, 100, 100);
  image(f3l1, 2225, 533-60, 198, 198);
  image(f3l2, 2225, 533-80, 198, 198);
  image(f3l3, 2225, 533, 198, 198);


  fill(bc[3]);
  rect(1943, 100, 343, 198);
  image(b[3], 1943, 100);      //  4
  image(f4s1, 1943+40, 100, 60, 60);
  image(f4s2, 1943+80, 100, 60, 60);
  image(f4s3, 1943+120, 100, 60, 60);
  image(f4m1, 1943-40, 100, 100, 100);
  image(f4l1, 1943-80, 100, 198, 198);
  image(f4x1, 1943, 100, 198, 198);

  fill(bc[4]);
  rect(1997, 388, 198, 343);
  image(b[4], 1997, 388);      //  5
  image(f5s1, 1997, 388+20, 60, 60);
  image(f5s2, 1997, 388+40, 60, 60);
  image(f5m1, 1997, 388+80, 100, 100);
  image(f5l1, 1997, 388-80, 198, 198);
  image(f5x1, 1997, 388, 198, 198);

  fill(bc[5]);
  rect(1897, 700, 343, 198);
  image(b[5], 1897, 700);      //  6
  image(f6m1, 1897+80, 700, 120, 120);
  image(f6l1, 1897-80, 700, 198, 198); 

  fill(bc[6]);
  rect(1697, 300, 343, 198);
  image(b[6], 1697, 300);      //  7
  image(f7l1, 1697, 300, 198, 198);

  fill(bc[7]);
  rect(1697, 500, 343, 198);
  image(b[7], 1697, 500);      //  8
  image(f8s1, 1697, 500, 60, 60);
  image(f8m1, 1697+20, 500, 120, 120);
  image(f8l1, 1697+40, 500, 198, 198);
  image(f8x1, 1697+80, 500, 198, 198);
  image(f8x2, 1697-40, 500, 198, 198);
  image(f8x3, 1697-80, 500, 198, 198);
  image(f8x4, 1697, 500, 198, 198);

  fill(bc[8]);
  rect(1508, 99, 343, 198);
  image(b[8], 1508, 99);       //  9
  image(f9s1, 1508+80, 99, 60, 60);
  image(f9s2, 1508+100, 99, 60, 60);
  image(f9m1, 1508-80, 99, 120, 120);
  image(f9m2, 1508-120, 99, 120, 120);
  image(f9l1, 1508-20, 99, 180, 180);
  image(f9x1, 1508+10, 99, 198, 198);

  fill(bc[9]);
  rect(1403, 389, 198, 343);
  image(b[9], 1403, 389);      // 10
  image(f10s1, 1403, 389+40, 60, 60);
  image(f10m1, 1403, 389+80, 120, 120);
  image(f10l1, 1403, 389-80, 180, 180);
  image(f10x1, 1403, 389-40, 198, 198);

  fill(bc[10]);
  rect(1476, 701, 343, 198);
  image(b[10], 1476, 701);     // 11
  image(f11l1, 1476+80, 701, 198, 198);
  image(f11x1, 1476-80, 701, 198, 198);
  image(f11x2, 1476, 701, 198, 198);

  fill(bc[10]);
  rect(1093, 701, 343, 198); 
  image(b[11], 1093, 701);     //#11
  image(f11l1, 1093+70, 701, 198, 198);
  image(f11x1, 1093-80, 701, 198, 198);
  image(f11x2, 1093, 701, 198, 198);

  fill(bc[9]);
  rect(1167, 389, 198, 343);
  image(b[12], 1167, 389);     //#10

  fill(bc[8]);
  rect(1062, 99, 343, 198);
  image(b[13], 1062, 99);      //# 9

  fill(bc[7]);
  rect(873, 500, 343, 198);
  image(b[14], 873, 500);      //# 8

  fill(bc[6]);
  rect(873, 300, 343, 198);
  image(b[15], 873, 300);      //# 7

  fill(bc[5]);
  rect(672, 700, 343, 198);
  image(b[16], 672, 700);      //# 6

  fill(bc[4]);
  rect(572, 390, 198, 343);
  image(b[17], 572, 390);      //# 5

  fill(bc[3]);
  rect(627, 100, 343, 198);
  image(b[18], 627, 100);      //# 4

  fill(bc[2]);
  rect(344, 533, 198, 343);
  image(b[19], 344, 533);      //# 3

  fill(bc[1]);
  rect(127, 629, 198, 343); 
  image(b[20], 127, 629);      //# 2

  fill(bc[0]);
  rect(245, 174, 198, 343);
  image(b[21], 245, 174);      //# 1



  angle += 0.05;
  println("direct =" + rotate_direction + "angle =" + angle + "cos =" + cos(angle));


  f1_size += 1;
  f2_size += 1;
  tint_value += 1;

  if (f1_size > 255) {
    f1_size = 200;
    f1_pos_x = int(random(100, 500));
    f1_pos_y = int(random(100, 500));
  }

  if (f2_size > 255) {
    f2_size = 200;
    f2_pos_x = int(random(100, 500));
    f2_pos_y = int(random(100, 500));
  }

  if (tint_value > 255) {
    tint_value = 0;
  }

  if ( movie1.available() == true) {
    flower_pos_x = int(random(100, 500));
    flower_pos_y = int(random(100, 500));
  }

  count = count + 1;

  //if (movie.available() == true) {
  //  movie.read(); 
  //}

  if (f1_size < 210) {
    tint(255, f1_size-200*2.55);
  }
  if (f1_size > 245) {
    tint(255, 255-f1_size);
  }

  image(f1, f1_pos_x-f1_size+5/2, f1_pos_y-f1_size+5/2, f1_size, f1_size);
  noTint();
  //translate(-f1_pos_x-f1_size/2, -f1_pos_y-f1_size/2);
  //rotate(0);

  pushMatrix();
  translate(300, 300);
  rotate(cos(angle)/2);

  //tint(0, 255, 0);
  image(f2, 0, 0, f2_size, f2_size);
  //tint(255, 127);  // Display at half opacity
  noTint();
  popMatrix();


  if (movie1.time() != movie1.duration()) {

    image(movie1, flower_pos_x, flower_pos_x, 256, 256);
  }



  //print(movie1.time() + "/" + movie1.duration());

  //image(movie2, 128, 128, width/2, height/2);
  //filter(GRAY);


  //if ( count % 10000 > 500 ) movie1.speed(0.5);
  //else movie1.speed(1);
}

void keyPressed() {
  print("key press");
  if (movie1.time() == movie1.duration()) {
    movie1.stop();
    flower_pos_x = int(random(100, 500));
    flower_pos_y = int(random(100, 500));
    movie1.play();
  }
}
