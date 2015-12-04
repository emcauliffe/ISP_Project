class Help {
  Help() {
  }
  void update() {
    background(255);
    fill(0);
    textSize(20);
    String help = "Press \"E\" to encode text. \nPress \"D\" to decode text. \nPress \"R\" to return to the main screen. \nPress \"H\" to see this help screen. \nPress \"Q\" to quit. \n \n \nPlace the message to be encoded in \"/Input/encode.txt\" \nPlace the message to be decoded in \"/Input/encode.txt\" \nEncrypted message is avaliable at \"/Output/encoded.txt\" \nDecrypted message is avaliable at \"/Output/decoded.txt\"";
    textAlign(LEFT);
    text(help, 100, 100);
    if (mouseX>466 && mouseX<535 && mouseY>717 && mouseY<742) {
      fill(0);
      stroke(1);
      fill(0);
      rect(466, 717, 69, 25);
      fill(225);
      textSize(20);
      text("Return", 469, 737);
    } else {
      fill(0);
      stroke(1);
      fill(255);
      rect(466, 717, 69, 25);
      fill(0);
      textSize(20);
      text("Return", 469, 737);
    }
  }
}