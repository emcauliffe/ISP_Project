Encoder e1;//encoder class
Decoder d1;//decoder class
int code;//0 for load screen, 1 for encode, 2 for decode
void setup() {
  size(1000, 748);
  background(255);
  e1=new Encoder();
  d1=new Decoder();
  frameRate(299999999);
  code=0;
}
void draw() {
  // load screen
  if (code==0) {
    background(255);
    fill(255);
    stroke(1);
    rect(25, 512, 456, 30);
    rect(521, 512, 456, 30);
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text("Encryption and Decryption Program", 10, 150, 990, 400);
    textSize(20);
    text("Press \"E\" or click to encrypt text in encode.txt", 252, 534);
    text("Press \"D\" or click to encrypt text in decode.txt", 748, 534);
  }
  //encode
  if (code==1) {
    background(255);
    stroke(0);
    fill(255);
    rect(100, 364, 800, 10);
    noStroke();
    fill(0);
    text("Loading...", 490, 394);//print loading on screen
    e1.update();
  }
  //decode
  if (code==2) {
    background(255);
    stroke(0);
    fill(255);
    rect(100, 364, 800, 10);
    noStroke();
    fill(0);
    text("Loading...", 490, 394);//print loading on screen
    d1.update();
  }
}
void keyPressed() {
  if (key=='e'||key=='E') {
    code=1; //send to encode
    loop();
  }
  if (key=='d'||key=='D') {
    code=2;//send to decode
    loop();
  }
  if (key=='r'||key=='R') {
    code=0;//send to launch screen
    loop();
  }
}
void mousePressed() {
  if (mouseX>25 && mouseX<481 && mouseY>512 && mouseY<542) {
    code=1;
    loop();
  }
  if (mouseX>521 && mouseX<977 && mouseY>512 && mouseY<542) {
    code=2;
    loop();
  }
}