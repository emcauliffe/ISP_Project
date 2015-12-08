class Mouse {
  Mouse() {
  }
  void update() {
    if (code==0) {
      if (mouseX>25 && mouseX<481 && mouseY>512 && mouseY<542) {//encode button
        code=1;//set to encode
      }
      if (mouseX>521 && mouseX<977 && mouseY>512 && mouseY<542) {//decode button
        code=2;//set to decode
      }
      if (mouseX>940 && mouseX<994 && mouseY>718 && mouseY<743) {//help button
        code=3;//set to help
      }
      if (mouseX>10 && mouseX<60 && mouseY>717 && mouseY<742) {//quit button
        exit();
      }
    }
    if (d1.de_complete()==true) {
      if (mouseX>197 && mouseX<801 && mouseY>8 && mouseY<34) {//return from decode button
        code=0;//set to launch screen
      }
    }
    if (e1.en_complete()==true) {
      if (mouseX>197 && mouseX<801 && mouseY>8 && mouseY<34) {//return from decode button
        code=0;//set to launch screen
      }
    }
    if (code==3) {
      if (mouseX>466 && mouseX<535 && mouseY>717 && mouseY<742) {//return from help button
        code=0;//set to launch screen
      }
    }
  }
}