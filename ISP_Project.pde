Encoder e1;//encoder class
String[] encode;//encode array
void setup() {
  encode=loadStrings("encode.txt");// load the text that is to be encoded as an array
  size(1000, 100);
  background(255);
  e1 = new Encoder(encode);
}
void draw() {
  e1.update();
  print(e1.encmsg());
  fill(0);
  text(e1.encmsg(), 20, 20);
  
  
  noLoop();
}