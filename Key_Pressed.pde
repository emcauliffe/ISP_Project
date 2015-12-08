class Key {
  Key() {
  }
  void update() {
    if (code==0) {
      if (key=='e'||key=='E') {
        code=1;//send to encode
      }
      if (key=='d'||key=='D') {
        code=2;//send to decode
      }
      if (key=='h'||key=='H') {
        code=3;//send to help screen
      }
    }
    if (key=='r'||key=='R') {
      code=0;//send to launch screen
    }
    if (key=='q'||key=='Q') {
      exit();//quit
    }
  }
}