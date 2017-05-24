JitterBug jit;
JitterBug bug;
bettle beetle;
void setup() {
size(800, 800);
smooth();
jit = new JitterBug(width * 0.33, height/2, 50);
bug = new JitterBug(width * 0.66, height/2, 10);
beetle = new bettle(width * 0.33, height/4, 30);
}
void draw() {
jit.move();
jit.display();
bug.move();
bug.display();
beetle.move();
beetle.display();
}