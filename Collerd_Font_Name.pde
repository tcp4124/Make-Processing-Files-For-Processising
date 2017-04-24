PFont font;
void setup() 
{
size(500, 500);
textSize(64);
textAlign(CENTER);
}


char t = 'T';
char r = 'R';
char a = 'A';
char v = 'V';
char i = 'I';
char s = 'S';

char c = 'C';
char o = 'O';
char l = 'L';

void draw()
{
background(0);             //Travis
fill(10, 20 , 255);
text(t, 60, 80);
text(r, 100, 80);
text(a, 140, 80);
text(v, 180, 80);
text(i, 220, 80);
text(s, 260, 80);

font = loadFont("ACaslonPro-Italic-48.vlw");
textFont(font);
fill(120, 17, 46);
text(i, 60, 200);               //is
text(s, 100, 200);

font = loadFont("Andalus-48.vlw");            // cool
textFont(font);
text(c, 60, 320);
text(o, 100, 320);
text(o, 140, 320);
text(l, 180, 320);

}