PImage landscapeImage;

void setup()
{
  size(600,600);
  landscapeImage=loadImage("landscape.jpg");
  //image source: https://www.youtube.com/watch?v=w8ndrYXBXT4
  noLoop();
}

void draw()
{
   background(255);
   drawing1();
   
   resetMatrix();
   translate(300,0);
   drawing2();
   
   resetMatrix();
   translate(0,300);
   drawing3();
   
   resetMatrix();
   translate(300,300);
   drawing4();
   
   save("loops.png");
}

void drawing1()
{
  //color gradient
  for (int k = 0; k<300; k = k + 1)
{
  noStroke();
  fill(k,131,240);
  rect(k,0,1,300);
}

//draws design in center
 stroke(255);
 noFill();
 strokeWeight(1);
 design();
 
 //draws a circle of designs
 translate(150,150);
 for (int angle = 0; angle < 360; angle = angle + 30)
 {
   pushMatrix();
   rotate(PI*angle/180);
   translate(100,0);
   scale(0.2);
   design();
   popMatrix();
 }
}

void design()
{
  //top triangle
  triangle(150,60,
           120,120,
           180,120);
  
  //left triangle
  triangle(120,120,
           60,150,
           120,180);
  
  //bottom triangle
  triangle(120,180,
           150,240,
           180,180);
  
  //right triangle
  triangle(180,180,
           240,150,
           180,120);
  
  //top left line
  line(150,60,  60,150);
  
  //bottom left line
  line(60,150,  150,240);
  
  //bottom right line
  line(150,240,  240,150);
  
  //top right line
  line(240,150,  150,60);
  
}

void drawing2()
{
  noStroke();
  image(landscapeImage, 0,0);
   
 //mesh
 stroke(234,3,255);
 for (int i = 0; i < 800; i = i + 25)
 {
   int j = 300 - i;
   
   //top mesh
   line(i,0,0,j);
   
   //bottom mesh
   line(i,300,300,j);
 }
}

void drawing3()
{
  noStroke();
  fill(0,0,0);
  rect(0,0,300,300);
  for (int x = 5; x < 300; x = x + 10)
  {
   
    //squares descending across
   //getting greater in size and location
    fill(0,0,0);
    stroke(255);
    rect(x, x, x+300, x+300);
    rect(x, x, x+250, x+250);
    rect(x, x, x+200, x+200);
    rect(x, x, x+150, x+150);
    rect(x, x, x+100, x+100);
    rect(x, x, x+50, x+50);
    rect(x, x, x, x);
  }
}

void drawing4()
{
  noStroke();
  
  //color gradient
  for (int k = 0; k<300; k = k + 1)
{
  noStroke();
  fill(k,21,107);
  rect(k,0,1,300);
}
  //draws star in center
  star();
  
  //draws stars in top row
  scale(0.2);
  for (int x = 10; x < 1300; x = x + 200)
  {
    pushMatrix();
    translate(x,0);
    star();
    popMatrix();
  }
  
  //draws stars in bottom row
  for (int x = 10; x < 1300; x = x + 200)
  {
    pushMatrix();
    translate(x,1200);
    star();
    popMatrix();
  }
}
void star()
{
  noFill();
  stroke(255);
  strokeWeight(1);
  
  rect(90,60,  120,60);
  rect(90,180,  120,60);
  
  triangle(90,60,
           210,60,
           150,90); 
  triangle(90,240,
           210,240,
           150,210);
  
  triangle(90,240,
           210,240,
           150,150);
  triangle(90,60,
           210,60,
           150,150);
  triangle(90,60,
           60,150,
           150,150);
  triangle(60,150,
           90,240,
           150,150);
  triangle(240,150,
           210,240,
           150,150);
  triangle(240,150,
           210,60,
           150,150);
           
  line(90,120,  60,150);
  line(90,180,  60,150);
  line(210,120,  240,150);
  line(240,150,  210,180);
  
  triangle(90,180,
           210,180,
           150,90);
  triangle(90,120,
           210,120,
           150,210);
           
}
