class Help {
  Help() {
  }
  void update() {
    background(255);
    fill(0);
    textSize(20);
    String help = "This a cesar cypher based encryption and decryption program. It is intended to encrypt and decrypt messages so that they are not easily readable. It is NOT intended for professional use and should by NO means be considered completely secure. \n \nPress \"E\" to encode text. \nPress \"D\" to decode text. \nPress \"R\" to return to the main screen. \nPress \"H\" to see this help screen. \nPress \"Q\" to quit. \n \nPlace the message to be encoded in \"/Input/encode.txt\" \nPlace the message to be decoded in \"/Input/encode.txt\" \nEncrypted message is avaliable at \"/Output/encoded.txt\" \nDecrypted message is avaliable at \"/Output/decoded.txt\" \n \nICS20  -- ISP Project \nProcessing 3.0.1 \nEthan McAuliffe";
    textAlign(LEFT);
    text(help, 50, 50, 800, 800);
    if (mouseX>466 && mouseX<535 && mouseY>717 && mouseY<742) {//if mouse is hovering over the return button, make the button black and text white
      fill(0);
      stroke(1);
      fill(0);
      rect(466, 717, 69, 25);
      fill(225);
      textSize(20);
      text("Return", 469, 737);
    } else {//otherwise, make button white and text black
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