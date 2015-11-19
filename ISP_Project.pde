Encoder e1;//encoder class
Decoder d1;//decoder class
int code;//0 for load screen, 1 for encode, 2 for decode
void setup() {
  size(1000, 748);
  background(255);
  e1=new Encoder();
  d1=new Decoder();
  code=0;
}
void draw() {
  e1.update();
  d1.update();
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
    println("");
    print(e1.encmsg());
    fill(0);
    textSize(12);
    textAlign(LEFT);
    text(e1.encmsg(), 10, 20, 980, 470);
    noLoop();
  }
  if (code==2) {
    background(255);
    println("");
    print(d1.decmsg());
    fill(0);
    textSize(12);
    textAlign(LEFT);
    text(d1.decmsg(), 10, 470, 980, 738);
    noLoop();
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