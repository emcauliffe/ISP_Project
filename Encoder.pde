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
  Encoder() {
    encode=loadStrings("encode.txt");// load the text that is to be encoded as an array;
  }
  void update() {
    shift1=(int(encode[0].charAt(0)));
    shift2=(int(encode[0].charAt(1)));
    eshift=shift2-shift1;//Calculates the shift required in the numbers to encode the text and prints the math for it^^
    el=encode[1].length();//calculates the length of the message to be encoded
    background(255);
    for (charnum=0; charnum<el; charnum=charnum+1) {
      ec=int(encode[1].charAt(charnum));
      ec=ec+eshift;
      completion=((charnum/el)*100);
      fill(0);
      text("Loading:"+completion, 10, 150);
      println(completion);
      if (charnum==0) {
        encoded=((char)ec)+"";
      } else {
        encoded+=((char)ec);
      }
    }
  }
  String encmsg() {
    if (el==0) {
      return("ATTENTION: THERE IS NO MESSAGE TO BE ENCRYPTED! PLEASE OPEN \"encode.txt\" AND FOLLOW THE INSTRUCTIONS!");
    } else {
      return (encoded);
    }
  }
}