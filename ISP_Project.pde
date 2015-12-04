Encoder e1;//encoder class
Decoder d1;//decoder class
Launch l1;//launch screen class
Help h1;//help class
int code;//0 for load screen, 1 for encode, 2 for decode, 3 for help
void setup() {
  size(1000, 748, P2D);//set canvas size
  background(255);//background white
  e1=new Encoder();//load encoder class
  d1=new Decoder();//load decoder class
  l1=new Launch();//load launch class
  h1=new Help();//load help class
  frameRate(144);//framerate set for 144hz monitor capability
  code=0;//set the program to open in the launch screen
}
void draw() {
  // load screen
  if (code==0) {
    l1.update();
  }
  //encode
  if (code==1) {
    e1.update();//load encoder class
  }
  //decode
  if (code==2) {
    d1.update();//load decoder class
  }
  if (code==3) {
    h1.update();//load help class
  }
}
void keyPressed() {
  if (code==0) {
    if (key=='e'||key=='E') {
      code=1;//send to encode
    }
    if (key=='d'||key=='D') {
      code=2;//send to decode
    }
    if (key=='h'||key=='H') {
      code=3;
    }
  }
  if (key=='r'||key=='R') {
    code=0;//send to launch screen
  }
  if (key=='q'||key=='Q') {
    exit();
  }
}
void mouseClicked() {
  if (code==0) {
    if (mouseX>25 && mouseX<481 && mouseY>512 && mouseY<542) {
      code=1;//set to encode
    }
    if (mouseX>521 && mouseX<977 && mouseY>512 && mouseY<542) {
      code=2;//set to decode
    }
    if (mouseX>940 && mouseX<994 && mouseY>718 && mouseY<743) {
      code=3;//set to help
    }
    if (mouseX>10 && mouseX<60 && mouseY>717 && mouseY<742) {
      exit();
    }
  }
  if (d1.de_complete()==true) {
    if (mouseX>197 && mouseX<801 && mouseY>8 && mouseY<34) {
      code=0;//set to launch screen
    }
  }
  if (e1.en_complete()==true) {
    if (mouseX>197 && mouseX<801 && mouseY>8 && mouseY<34) {
      code=0;//set to launch screen
    }
  }
  if (code==3) {
    if (mouseX>466 && mouseX<535 && mouseY>717 && mouseY<742) {
      code=0;
    }
  }
}