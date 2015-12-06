class Encoder {
  int shift1;//encode shift one
  int shift2;//encode shift two
  int eshift;//the integer for how much the numbers should shift to encode the message
  int ec;//encode character one
  float el;//length of mesage to be encoded
  String encoded;//encoded message
  String[] encode;//encode array
  float completion;//Percentage of the message encoded
  PrintWriter outputencoded;//output the encoded text to decode.txt
  int charnum;//current character being encoded
  int divide;//number of times that charnum can be divided
  int remainder;//remainder of divided charnum
  boolean complete;//is the program complete
  Encoder() {
    encode=loadStrings("Input/encode.txt");// load the text that is to be encoded as an array;
    outputencoded=createWriter("Output/encoded.txt");
    shift1=(int(encode[0].charAt(0)));//convert the first character in the key to ASCII
    shift2=(int(encode[0].charAt(1)));//convert the second character in the key to ASCII
    eshift=shift2-shift1;//Subtracts the ASCII of the first number from the second number. This calculates the shift required in the cypher
    el=encode[1].length();//calculates the length of the message to be encoded
    divide=(round(el))/100;
    remainder=(round(el))%100;
    noStroke();
    complete=false;
  }
  void update() {
    background(255);
    stroke(0);
    fill(255);
    rect(100, 364, 800, 10);//draw static box for loading bar
    noStroke();
    fill(0);
    textSize(20);
    text("Loading...", 490, 394);//print loading on screen
    if (el==0) {//if there is nothing to be encoded alert the user
      background(255);
      fill(250, 0, 0);
      text("ATTENTION: THERE IS NO MESSAGE TO BE ENCRYPTED! PLEASE OPEN \"Input/encode.txt\" AND FOLLOW THE INSTRUCTIONS!", 12, 291, 980, 738);
    } else {
      if (charnum==el) {//if the program is fully encrypted, do this:
        cursor(ARROW);
        background(255);
        if (mouseX>197 && mouseX<801 && mouseY>8 && mouseY<34) { 
          textSize(15);
          textAlign(LEFT);
          fill(0);
          stroke(1);
          fill(0);
          rect(197, 8, 604, 26);
          text(encoded, 10, 50, 980, 738);//display the decoded message on the screen
          fill(255);
          textSize(15);
          textAlign(CENTER);
          text("Encoded text is also avaliable in \"Output/encoded.txt\". Press \"R\" or click to return.", 500, 25); //tell the user where to find the text output so they can copy it to the clipboard
          complete=true;
        } else {
          textSize(15);
          textAlign(LEFT);
          fill(0);
          stroke(1);
          fill(255);
          rect(197, 8, 604, 26);
          fill(0);
          text(encoded, 10, 50, 980, 738);//display the encoded message on the screen
          textSize(15);
          textAlign(CENTER);
          text("Encoded text is also avaliable in \"Output/encoded.txt\". Press \"R\" or click to return.", 500, 25); //tell the user where to find the text output so they can copy it to the clipboard
        }
        outputencoded.print(encoded);//print the encoded message to the output/decoded.txt file and close it
        outputencoded.flush();
        outputencoded.close();
      } else {//if it is not complete, do this:
        cursor(WAIT);
        if (remainder>0) {
          fill(255);
          rect(463, 405, 53, 46);//erase the loading percentage so that we can draw over it again
          ec=int(encode[1].charAt(charnum));//converts every character to ASCII
          if (ec!=32) {//if the character is not a space, then encrypt the character
            ec=ec+eshift;//shifts the ASCII code of each character in the message by eshift
          }
          completion=((charnum/el)*100);//calculates how far the throuugh the
          fill(0);
          rect(100, 364, (completion*8), 10);//draw the loading progress rectangle
          text(round(completion)+"%", 490, 423);//display the loading percentage on screen and round it to the nearest percentage
          //println(completion);
          if (charnum==0) {
            encoded=((char)ec)+"";//print nothing instead of "null" character on the first operation
          } else {
            encoded+=((char)ec);
          }
          charnum++; //moves to next character
          remainder--;
        } else {
          for (int i = 0; i<100; i++) {
            fill(255);
            rect(463, 405, 53, 46);//erase the loading percentage so that we can draw over it again
            ec=int(encode[1].charAt(charnum));//converts every character to ASCII
            if (ec!=32) {//if the character is not a space, then encrypt the character
              ec=ec+eshift;//shifts the ASCII code of each character in the message by eshift
            }
            completion=((charnum/el)*100);//calculates how far the throuugh the
            fill(0);
            rect(100, 364, (completion*8), 10);//draw the loading progress rectangle
            text(round(completion)+"%", 490, 423);//display the loading percentage on screen and round it to the nearest percentage
            //println(completion);
            if (charnum==0) {
              encoded=((char)ec)+"";//print nothing instead of "null" character on the first operation
            } else {
              encoded+=((char)ec);
            }
            charnum++; //moves to next character
          }
        }
      }
    }
  }
  boolean en_complete() {
    return complete;
  }
}