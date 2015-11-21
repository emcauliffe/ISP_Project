class Encoder {
  int shift1;//encode shift one
  int shift2;//encode shift two
  int eshift;//the integer for how much the numbers should shift to encode the message
  int ec;//encode character one
  int ec2;//encode character two
  float el;//length of mesage to be encoded
  int charnum;//the placement number of the character in the message to be encoded
  String encoded;//encoded message
  String[] encode;//encode array
  float completion;//Percentage of the message encoded
  PrintWriter outputencoded;//output the encoded text to decode.txt
  Encoder() {
    encode=loadStrings("Input/encode.txt");// load the text that is to be encoded as an array;
    outputencoded=createWriter("Output/encode.txt");
  }
  void update() {
    shift1=(int(encode[0].charAt(0)));
    shift2=(int(encode[0].charAt(1)));
    eshift=shift2-shift1;//Calculates the shift required in the numbers to encode the text and prints the math for it^^
    el=encode[1].length();//calculates the length of the message to be encoded
    for (charnum=0; charnum<el; charnum=charnum+1) {
      ec=int(encode[1].charAt(charnum));
      ec=ec+eshift;
      completion=((charnum/el)*100);
      fill(0);
      rect(100, 364, (completion*8), 10);
      text("loading", 490, 394);
      println(completion);
      if (charnum==0) {
        encoded=((char)ec)+"";
      } else {
        encoded+=((char)ec);
      }
    }
    background(255);
    println("");
    print(encoded);
    textSize(15);
    textAlign(CENTER);
    text("Encoded text is also avaliable in line 8 of \"Output/encode.txt\"", 400, 15);
    textAlign(LEFT);
    if (el==0) {
      fill(250, 0, 0);
      text("ATTENTION: THERE IS NO MESSAGE TO BE ENCRYPTED! PLEASE OPEN \"encode.txt\" AND FOLLOW THE INSTRUCTIONS!", 10, 150, 980, 738);
    } else {
      fill(0);
      text(encoded, 10, 50, 980, 738);
      outputencoded.println(encoded);
    }
    outputencoded.flush();
    outputencoded.close();
    noLoop();
  }
}