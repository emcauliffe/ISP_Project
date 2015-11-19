class Encoder {
  int shift1;//encode shift one
  int shift2;//encode shift two
  int eshift;//the integer for how much the numbers should shift to encode the message
  int ec;//encode character one
  int ec2;//encode character two
  int el;//length of mesage to be encoded
  int charnum;//the placement number of the character in the message to be encoded
  String[] str;//string of input text
  String encoded;//encoded message
  Encoder(String[] s1) {
    str = s1;
  }
  void update() {
    shift1=(int(str[0].charAt(0)));
    shift2=(int(str[0].charAt(1)));
    eshift=shift2-shift1;//Calculates the shift required in the numbers to encode the text and prints the math for it^^
    el=str[1].length();//calculates the length of the message to be encoded
    for (charnum=0; charnum<el; charnum=charnum+1) {
      ec=int(str[1].charAt(charnum));
      ec=ec+eshift;
      //print((char)ec);
      if (charnum==0) {
        encoded = ((char)ec)+"";
      } else {
        encoded += ((char)ec);
      }
    }
  }
  String encmsg() {
    return (encoded);
  }
}