Encoder e1;//encoder class
Decoder d1;//decoder class
int code;//0 for load screen, 1 for encode, 2 for decode
int i1;
void setup() {
  size(1000, 748);
  background(255);
  e1=new Encoder();
  d1=new Decoder();
  frameRate(6000);
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
    e1.update();
    background(255);
    println("");
    print(e1.encmsg());
    if (e1.encmsg() == "ATTENTION: THERE IS NO MESSAGE TO BE ENCRYPTED! PLEASE OPEN \"encode.txt\" AND FOLLOW THE INSTRUCTIONS!") {
      fill(250, 0, 0);
    } else {
      fill(0);
    }
    textSize(15);
    textAlign(LEFT);
    text(e1.encmsg(), 10, 150, 980, 738);
    noLoop();
  }
  if (code==2) {
    background(255);
    d1.update();
    background(255);
    println("");
    print(d1.decmsg());
    if (d1.decmsg() == "ATTENTION: THERE IS NO MESSAGE TO BE DECRYPTED! PLEASE OPEN \"decode.txt\" AND FOLLOW THE INSTRUCTIONS!") {
      fill(250, 0, 0);
    } else {
      fill(0);
    }
    textSize(15);
    textAlign(LEFT);
    text(d1.decmsg(), 10, 150, 980, 738);
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