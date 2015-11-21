class Decoder {
  int shift1;//decode shift one
  int shift2;//decode shift two
  int eshift;//the integer for how much the numbers should shift to decode the message
  int ec;//decode character one
  int ec2;//decode character two
  int el;//length of mesage to be decoded
  int charnum;//the placement number of the character in the message to be decoded
  String decoded;//decoded message
  String[] decode;//decode array
  float completion;//Percentage of the message decoded
  PrintWriter outputdecoded;//output the decoded text to decode.txt
  Decoder() {
    decode=loadStrings("Input/decode.txt");// load the text that is to be decoded as an array;
    outputdecoded=createWriter("Output/decode.txt");
  }
  void update() {
    shift1=(int(decode[0].charAt(0)));
    shift2=(int(decode[0].charAt(1)));
    eshift=shift1-shift2;//Calculates the shift required in the numbers to decode the text and prints the math for it^^
    el=decode[1].length();//calculates the length of the message to be decoded
    for (charnum=0; charnum<el; charnum=charnum+1) {
      ec=int(decode[1].charAt(charnum));
      ec=ec+eshift;
      completion=((charnum/el)*100);
      fill(0);
      rect(100, 364, (completion*8), 10);
      text("loading", 490, 394);
      println(completion);
      if (charnum==0) {
        decoded=((char)ec)+"";
      } else {
        decoded+=((char)ec);
      }
    }
    background(255);
    println("");
    print(decoded);
    textSize(15);
    textAlign(CENTER);
    text("Decoded text is also avaliable in line 8 of \"Output/decode.txt\"", 400, 15);
    textAlign(LEFT);
    if (el==0) {
      fill(250, 0, 0);
      text("ATTENTION: THERE IS NO MESSAGE TO BE DECRYPTED! PLEASE OPEN \"decode.txt\" AND FOLLOW THE INSTRUCTIONS!", 10, 150, 980, 738);
    } else {
      fill(0);
      text(decoded, 10, 50, 980, 738);
      outputdecoded.println(decoded);
    }
    outputdecoded.flush();
    outputdecoded.close();
    noLoop();
  }
}