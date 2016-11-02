//Olivier Balazy
//10-29-16
int pad1x = 20;
int pad1y = 120;
float slow;
float y;
float easing = 0.15;
int rad = 20;        
float xpos, ypos;      
float xspeed = 1.5;  
float yspeed = 1.5; 
float cpupos;
float xdirection = 3;  
float ydirection = random(-1,1.5);  
PFont a;
PFont b;
String player1 = "0";
String cpu= "0";
String cpu1 = "0";
String cpu2 = "0";
Boolean auto = false;
Boolean gameover = false;
void setup(){
  size(1600,870);
  xpos =width/2;
  ypos =height/2;
  frameRate(120);
  smooth();
  a = createFont("SUBWT___.ttf",40);
  b = createFont("SUBWT___.ttf",40);
}
void draw(){
  if(auto== true){
  if(gameover == false){
  background(0);
  for(int midln = 0; midln <=height; midln+=20){
   rect(width/2,midln,10,10); 
  }
  float targetY = ypos;
  float dy = targetY - y;
  y += dy * easing;
  rect(40,y-50,pad1x,pad1y);
  rect(width-60,y-50,pad1x,pad1y);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  cpupos =y;
   if (xpos > width-rad) {
       xpos = width/2;
       ypos = width/2;
       xspeed = 1.5;
       yspeed = 1.5;
     if(cpu1 =="4"){
       cpu1 = "5";
     }
     if(cpu1 =="3"){
       cpu1 = "4";
     }
     if(cpu1 =="2"){
       cpu1 = "3";
     }
     if(cpu1 =="1"){
       cpu1 = "2";
     }
     if(cpu1 =="0"){
        cpu1 = "1";

     }
  }
   if (xpos < rad) {
      xpos = width/2;
     ypos = width/2;
     xspeed = 1.5;
     yspeed = 1.5;
     if(cpu2 =="4"){
       cpu2 = "5";
     }
     if(cpu2 =="3"){
       cpu2 = "4";
     }
     if(cpu2 =="2"){
       cpu2 = "3";
     }
     if(cpu2 =="1"){
       cpu2 = "2";
     }
     if(cpu2 =="0"){
       cpu2 = "1";
     }
    
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
    yspeed+=.1;
  }
  fill(255);
  rect(xpos,ypos,rad,rad);
  textSize(40);
  textFont(a);
  text(cpu1,width/2-(width/4),60);    
  textFont(b);
  text(cpu2,width-(width/4),60);
  }
  if(cpu1=="5"){
    gameover = true;
    background(0);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("GAME OVER",width/2,height/2);
    textSize(50);
    text("COMPUTER 1 WON",width/2,(height/2)+140);
    gameover = false;
    cpu1="0";
    cpu2="0";
  }
  if ((xpos > 40) && (xpos < 40+pad1x) && (ypos > y-50) && (ypos < (y-50)+(pad1y))) {
xdirection *= -1;
     xspeed+=.1;
     ydirection = random(-2.5,2.5); 
}
if ((xpos > width-80) && (xpos < width-60+pad1x) && (ypos > y-50) && (ypos < (y-50)+(pad1y))) {
xdirection *= -1;
     xspeed+=.1;
     ydirection = random(-2.5,2.5); 
}
  if(cpu2=="5"){
    gameover = true;
    background(0);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("GAME OVER",width/2,height/2);
    textSize(50);
    text("COMPUTER 2 WON",width/2,(height/2)+140);
    gameover = false;
    cpu1="0";
    cpu2="0";
  }
  }
  if (auto == false){
    if(gameover == false){
  background(0);
  for(int midln = 0; midln <=height; midln+=20){
   rect(width/2,midln,10,10); 
  }
  float targetY = ypos;
  float dy = targetY - y;
  y += dy * easing;
  rect(40,mouseY-50,pad1x,pad1y);
  rect(width-60,y-50,pad1x,pad1y);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  cpupos =y;
   if (xpos > width-rad) {
       xpos = width/2;
       ypos = width/2;
       xspeed = 1.5;
       yspeed = 1.5;
     if(player1 =="4"){
       player1 = "5";
     }
     if(player1 =="3"){
       player1 = "4";
     }
     if(player1 =="2"){
       player1 = "3";
     }
     if(player1 =="1"){
       player1 = "2";
     }
     if(player1 =="0"){
        player1 = "1";

     }
  }
   if (xpos < rad) {
      xpos = width/2;
     ypos = width/2;
     xspeed = 1.5;
     yspeed = 1.5;
     if(cpu =="4"){
       cpu = "5";
     }
     if(cpu =="3"){
       cpu = "4";
     }
     if(cpu =="2"){
       cpu = "3";
     }
     if(cpu =="1"){
       cpu = "2";
     }
     if(cpu =="0"){
       cpu = "1";
     }
    
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
    yspeed+=.1;
  }
  fill(255);
  rect(xpos,ypos,rad,rad);
  textSize(40);
  textFont(a);
  text(player1,width/2-(width/4),60);    
  textFont(b);
  text(cpu,width-(width/4),60);
  }
  if(player1=="5"){
    gameover = true;
    background(0);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("GAME OVER",width/2,height/2);
    textSize(50);
    text("PLAYER WON",width/2,(height/2)+140);
  }
  if ((xpos > 40) && (xpos < 40+pad1x) && (ypos > mouseY-50) && (ypos < mouseY+(pad1y-50))) {
xdirection *= -1;
     xspeed+=.1;
     ydirection = random(-2.5,2.5); 
}
if ((xpos > width-80) && (xpos < width-60+pad1x) && (ypos > y-50) && (ypos < (y-50)+(pad1y))) {
xdirection *= -1;
     xspeed+=.1;
     ydirection = random(-2.5,2.5); 
}
  if(cpu=="5"){
    gameover = true;
    background(0);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("GAME OVER",width/2,height/2);
    textSize(50);
    text("COMPUTER WON",width/2,(height/2)+140);
  }
}
  }
 void keyPressed(){
  if(key=='z'){
    auto=true;
  }
  if(key=='x'){
    auto=false;
  }
 }
