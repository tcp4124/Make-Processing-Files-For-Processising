void setup() {
size(400, 400);

}
int x = 0;
int FaceRight = x + 180;
int Faceleft = x + 160;
int x2 = x;

void draw(){                // Color change attempt
if(keyPressed && key== ' ') {
background(0, 0, 0);
} else {
background(255, 255, 255);
}

{                                // movement
if (keyCode == LEFT) {x--;}
  
else if(keyCode == RIGHT) {x++;}

  }
beginShape();               // body
fill(130, 130, 130);
vertex(140 + x, 60);
vertex(220 + x, 60);
vertex(220 + x,140);
vertex(200 + x,140);
vertex(200 + x, 220);
vertex(160 + x, 220);
vertex(160 + x, 140);
vertex(140 + x, 140);
vertex(140 + x, 60);
endShape();

beginShape();               // legfiller
fill(130, 130, 130);
triangle(220 + x, 280, 200 + x, 240, 220 + x, 240);
endShape();

beginShape();                 // legfiller
fill(0, 0, 0);
triangle(140 + x, 280, 160 + x, 240, 140 + x, 240);
endShape();

beginShape();                  // body
fill(130, 130, 130);
ellipse(180 + x, 240, 80, 80);
endShape();

beginShape();                   // bodyshadow
fill(0, 0, 0);
arc(180 + x, 240, 80, 80, .8, 5);
endShape();

beginShape();                  //leg 
fill(130, 130, 130);
vertex(220 + x, 240);
vertex(240 + x, 240);
vertex(240 + x, 260);
vertex(260 + x, 260);
vertex(260 + x, 280);
vertex(220 + x, 280);
vertex(220 + x, 240);
endShape();

beginShape();                 //leg
fill(0, 0, 0);
vertex(140 + x, 240);
vertex(120 + x, 240);
vertex(120 + x, 260);
vertex(100 + x, 260);
vertex(100 + x, 280);
vertex(140 + x, 280);
vertex(140 + x, 240);
endShape();

beginShape();                  //glasses 1
fill(0, 0, 0);
rect(160 + x, 160, 20, 60);
endShape();

beginShape();                    // glasses 2
fill(0, 0, 0);
triangle(160 + x, 160, 180 + x, 160, 160 + x, 140);
endShape();


{                           //mustach/mouth movement
if (mouseX > FaceRight)
{ x2 = Faceleft - 180;}
else if (mouseX < Faceleft)
{ x2 = FaceRight - 160;}

beginShape();                  //glacces             
if(keyPressed && key== ' ') {
fill(0, 255, 255);
} else {
fill(10, 74, 222);
}
rect(200 + x, 80, 20, 20);
endShape();
 
beginShape();     //glacces 
if(keyPressed && key== ' ') {
fill(0, 255, 255);
} else {
fill(10, 74, 222);
}
rect(140 + x, 80, 20, 20);
endShape();
}



beginShape();               //shadow
fill(255, 255, 255);
vertex(160 + x + x2, 120);
vertex(180 + x + x2, 110);
vertex(200 + x + x2, 120);
vertex(200 + x + x2, 100);
vertex(160 + x + x2, 100);
vertex(160 + x + x2, 120);
endShape();


beginShape();                                
fill(90, 90, 90);
rect(160 + x, 90, 40, 5);
endShape();
}