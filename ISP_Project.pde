Encoder e1;//encoder class
Decoder d1;//decoder class
void setup() {
  size(1000,100);
  background(255);
  e1=new Encoder();
  d1=new Decoder();
}
void draw() {
  e1.update();
  d1.update();
  print(e1.encmsg());
  print(d1.decmsg());
  fill(0);
  text(e1.encmsg(),10,20);
  text(d1.decmsg(),10,40);
  noLoop();
}