int xPos=200,xDir=1,speed=15,lost,lives=100;
int X1 = 200,x=40,y=40,x2=40,y2=40,sDir=1,sspeed=12;
int Y1 = 200,tDir=1,tspeed=13,xs=500,ys=500,s2speed=3,s2Dir=1;
int X2 = 220,oDir=1,ospeed=10,xo=400,yo=400;
int Y2 = 160,lDir=1,lspeed=15,xl=590,yl=590;
int X3 = 240;
int Y3 = 200;
void setup()
{
  size (600,600);
  smooth();
  background(0);
  noStroke();
  fill(255,100,40);
}
//triangle
void drawTriangle() {
  triangle(X1, Y1, X2, Y2, X3, Y3);
}
//movement for triangle
void keyPressed() {
  if (keyCode == UP) {
	Y1 = Y1 - 40;
	Y2 = Y2 - 40;
	Y3 = Y3 - 40;
  }
  else if (keyCode == DOWN) {
	Y1 = Y1 + 40;
	Y2 = Y2 + 40;
	Y3 = Y3 + 40;
  }
  else if (keyCode == RIGHT) {
	X1 = X1 + 40;
	X2 = X2 + 40;
	X3 = X3 + 40;
  }
  else if (keyCode == LEFT) {
	X1 = X1 - 40;
	X2 = X2 - 40;
	X3 = X3 - 40;
  }
}
//draws or displays
void draw()
{
  background(200);
 fill(200,100,255);
 drawLittleCircle();
 fill(200,100,40);
 drawOvale();
 fill(200,200,40);
 drawRectangle();
 fill(100,200,240);
 drawSquare();
 fill(150,100,140);
 drawTriangle();
 fill(250,220,140);
 drawEllipse();
 fill(255,0,0);
 //text for score
 text("Lives= "+lives,10,10);
 fill(0,0,190);
 //instructions
 text("The triangle moves with arrow keys.\nwhen life hits 0 the animation stops.",10,25);
 // For circle
  xPos=xPos+xDir*speed;
  if (xPos>width-20 || xPos<20)
  {
	xDir=-xDir;
  }
  if (lives<=0)
  {
	lost=true;
	noLoop();
	textSize(20);
	text("Click button on top", 125,100);
	textSize(13);
  }
 // For square
  x=x+sDir*sspeed;
  if (x>width-20 || x<20)
  {
	sDir=-sDir;
  }
  if (lives<=0)
  {
	lost=true;
	noLoop();
	textSize(20);
	text("Click button on top", 125,100);
	textSize(13);
  }
 //For rect
 xs=xs+s2Dir*s2speed;
  if (xs>width-20 || xs<20)
  {
 s2Dir=-s2Dir;
  }
  if (lives<=0)
  {
	lost=true;
	noLoop();
	textSize(20);
	text("Click button on top", 125,100);
	textSize(13);
  }
 //For Ovale
  xo=xo+oDir*ospeed;
  if (xo>width-20 || xo<20)
  {
 oDir=-oDir;
  }
  if (lives<=0)
  {
	lost=true;
	noLoop();
	textSize(20);
	text("Click button on top", 125,100);
	textSize(13);
  }
 
}
//Drawing a circle and decrease
void drawEllipse(){
ellipse(xPos, 300, 40, 40);
 if (dist(X1, Y1, X2, Y2, X3, Y3, 100)<=20)
  {
	speed=speed+5;
	lives=lives+speed;
  }
  if(Y1==xPos)
  {
	lives=lives-1;
  }
  if (lost==true)
  {
	speed=5;
	lives=100;
	xPos=width/2;
	xDir=1;
	lost=false;
	loop();
  }
}
//Drawing a square and decrease
void drawSquare(){
 rect(x,y,x2,y2);
 if (dist(X1, Y1, X2, Y2, X3, Y3, 100)<=20)
  {
	sspeed=sspeed+4;
	lives=lives+sspeed;
  }
  if(Y2==x)
  {
	lives=lives-2;
  }
  if (lost==true)
  {
	sspeed=5;
	lives=100;
	x=width/2;
	sDir=1;
	lost=false;
	loop();
  }
}
//Drawing a rect and decrease
void drawRectangle(){
 rect(xs,ys,30,60);
 if (dist(X1, Y1, X2, Y2, X3, Y3, 100)<=20)
  {
	s2speed=s2speed+2;
	lives=lives+s2speed;
  }
  if(Y2==xs)
  {
	lives=lives-2;
  }
  if (lost==true)
  {
	s2speed=5;
	lives=100;
	xs=width/2;
	s2Dir=1;
	lost=false;
	loop();
  }
}
//Drawing a ovale and decrease
void drawOvale(){
 ellipse(xo,yo,60,30);
 if (dist(X1, Y1, X2, Y2, X3, Y3, 100)<=20)
  {
	ospeed=ospeed+10;
	lives=lives+ospeed;
  }
  if(Y2==xo)
  {
	lives=lives-2;
  }
  if (lost==true)
  {
	ospeed=10;
	lives=100;
	xo=width/2;
	oDir=1;
	lost=false;
	loop();
  }
}
//Drawing a  little circle and decrease
void drawLittleCircle(){
 ellipse(xl,yl,10,10);
 if (dist(X1, Y1, X2, Y2, X3, Y3, 100)<=20)
  {
	lspeed=lspeed+1;
	lives=lives+lspeed;
  }
  if(Y3==xl&&Y2==xl)
  {
	lives=lives+100;
  }
  if (lost==true)
  {
	lspeed=5;
	lives=100;
	xl=width/2;
	lDir=1;
	lost=false;
	loop();
  }
}
