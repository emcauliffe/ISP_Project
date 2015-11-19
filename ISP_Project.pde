Encoder e1;//encoder class
void setup() {
  size(1000, 100);
  background(255);
  e1 = new Encoder();
}
void draw() {
  e1.update();
  print(e1.encmsg());
  fill(0);
  text(e1.encmsg(), 20, 20);
  noLoop();
}