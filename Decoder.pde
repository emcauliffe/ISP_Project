class Decoder {
  int shift1;//decode shift one
  int shift2;//decode shift two
  int dshift;//the integer for how much the numbers should shift to decode the message
  int dc;//decode character one
  int dl;//length of mesage to be decoded
  int charnum;//the placement number of the character in the message to be decoded
  String decoded;//decoded message
  String[] decode;//decode array
  float completion;//Percentage of the message decoded
  PrintWriter outputdecoded;//output the decoded text to decode.txt
  int charperframe;//the amount of characters to be encoded per refresh of the screen
  Decoder() {
    decode=loadStrings("Input/decode.txt");// load the text that is to be decoded as an array;
    outputdecoded=createWriter("Output/decode.txt");
    shift1=(int(decode[0].charAt(0)));
    shift2=(int(decode[0].charAt(1)));
    dshift=shift1-shift2;//Calculates the shift required in the numbers to decode the text and prints the math for it^^
    dl=decode[1].length();//calculates the length of the message to be decoded
    noStroke();
  }
  void update() {

    if (dl==0) {
      background(255);
      fill(250, 0, 0);
      text("ATTENTION: THERE IS NO MESSAGE TO BE DECRYPTED! PLEASE OPEN \"Input/decode.txt\" AND FOLLOW THE INSTRUCTIONS!", 12, 291, 980, 738);
    } else {
      if (charnum==dl) {
        background(255);
        println("");
        print(decoded);
        textSize(15);
        textAlign(CENTER);
        text("Encoded text is also avaliable in line 8 of \"Output/encode.txt\". Press \"R\" to return", 400, 15);
        textAlign(LEFT);
        fill(0);
        text(decoded, 10, 50, 980, 738);
        outputdecoded.print(decoded);
        outputdecoded.flush();
        outputdecoded.close();
        noLoop();
      } else {
        fill(255);
        rect(463, 405, 53, 26);
        dc=int(decode[1].charAt(charnum));//converts every character to ASCII
        dc=dc+dshift;//shifts the ASCII code of each character in the message by eshift 
        completion=((charnum/dl)*100);//calculates how far the throuugh the 
        rect(100, 364, (completion*8), 10);
        text(round(completion)+"%", 490, 423);
        //println(completion);
        if (charnum==0) {
          decoded=((char)dc)+"";
        } else {
          decoded+=((char)dc);
        }
        charnum++; //moves to next character
      }
    }
  }
}