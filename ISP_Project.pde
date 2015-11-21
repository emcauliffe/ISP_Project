Encoder e1;//encoder class
Decoder d1;//decoder class
int code;//0 for load screen, 1 for encode, 2 for decode
void setup() {
  size(1000, 748);
  background(255);
  e1=new Encoder();
  d1=new Decoder();
  frameRate(144);
  code=0;
}
void draw() {
  if (code==0) {
    background(255);
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text("Encryption and Decryption Program", 10, 150, 990, 400);
    textSize(20);
    text("Press \"E\" to encrypt text in encode.txt", 252, 534);
    text("Press \"D\" to encrypt text in decode.txt", 748, 534);
  }
  if (code==1) {
    background(255);
    stroke(0);
    fill(255);
    rect(100, 364, 800, 10);
    noStroke();
    e1.update();
  }
  if (code==2) {
    background(255);
    stroke(0);
    fill(255);
    rect(100, 364, 800, 10);
    noStroke();
    d1.update();
  }
}
void keyPressed() {
  if (key=='e'||key=='E') {
    code=1;
    loop();
  }
  if (key=='d'||key=='D') {
    code=2;
    loop();
  }
  if (key=='r'||key=='R') {
    code=0;
    loop();
  }
}