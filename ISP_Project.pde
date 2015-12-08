Encoder e1;//encoder class
Decoder d1;//decoder class
Launch l1;//launch screen class
Help h1;//help class
Key k1;//key_pressed class
Mouse m1;//mouse_pressed class
int code;//0 for load screen, 1 for encode, 2 for decode, 3 for help
void setup() {
  size(1000, 748, P2D);//set canvas size
  background(255);//background white
  e1=new Encoder();//load encoder class
  d1=new Decoder();//load decoder class
  l1=new Launch();//load launch class
  h1=new Help();//load help class
  k1=new Key();//load key_pressed class
  m1=new Mouse();//load mouse_pressed class
  frameRate(144);//framerate set for 144hz monitor capability
  code=0;//set the program to open in the launch screen
}
void draw() {
  // load screen
  if (code==0) {
    l1.update();//load launch screen class
  }
  //encode
  if (code==1) {
    e1.update();//load encoder class
  }
  //decode
  if (code==2) {
    d1.update();//load decoder class
  }
  //help
  if (code==3) {
    h1.update();//load help class
  }
}
void keyPressed() {
k1.update();//load key_pressed class
}
void mousePressed() {
  m1.update();//load mouse_pressed class
}