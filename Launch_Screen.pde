class Launch {
  Launch() {
    ;
  }
  void update () {
    cursor(ARROW);
    background(255);
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text("Encryption and Decryption Program", 10, 150, 990, 400);
    if (mouseX>25 && mouseX<481 && mouseY>512 && mouseY<542) {
      fill(0);//make the clickboxes white
      stroke(1);//make sure that the boxes have a stroke around them
      rect(25, 512, 456, 30);//clickbox for encode
      fill(255);
      textSize(20);
      text("Press \"E\" or click to encrypt text in encode.txt", 252, 534);
    } else {
      fill(255);//make the clickboxes white
      stroke(1);//make sure that the boxes have a stroke around them
      rect(25, 512, 456, 30);//clickbox for encode
      fill(0);
      textSize(20);
      text("Press \"E\" or click to encrypt text in encode.txt", 252, 534);
    }
    if (mouseX>521 && mouseX<977 && mouseY>512 && mouseY<542) {
      fill(0);
      stroke(1);
      rect(521, 512, 456, 30);//clickbox for decode
      fill(255);
      textSize(20);
      text("Press \"D\" or click to encrypt text in decode.txt", 748, 534);
    } else {
      fill(255);
      stroke(1);
      rect(521, 512, 456, 30);//clickbox for decode
      fill(0);
      textSize(20);
      text("Press \"D\" or click to encrypt text in decode.txt", 748, 534);
    }
    if (mouseX>940 && mouseX<994 && mouseY>717 && mouseY<742) {
      fill(0);
      stroke(1);
      rect(940, 717, 54, 25);
      fill(255);
      text("Help", 966, 737);
    } else {
      fill(0);
      stroke(1);
      fill(255);
      rect(940, 717, 54, 25);
      rect(10, 717, 50, 25);
      fill(0);
      textSize(20);
      text("Help", 966, 737);
      text("Quit", 34, 737);
    }

    if (mouseX>10 && mouseX<60 && mouseY>717 && mouseY<742) {
      fill(0);
      stroke(1);
      rect(10, 717, 50, 25);
      fill(255);
      text("Quit", 34, 737);
    } else {
      fill(0);
      stroke(1);
      fill(255);
      rect(10, 717, 50, 25);
      fill(0);
      textSize(20);
      text("Quit", 34, 737);
    }
  }
}