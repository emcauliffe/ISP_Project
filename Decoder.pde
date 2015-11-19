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
  Decoder() {
    decode=loadStrings("decode.txt");// load the text that is to be decoded as an array;
  }
  void update() {
    shift1=(int(decode[0].charAt(0)));
    shift2=(int(decode[0].charAt(1)));
    eshift=shift1-shift2;//Calculates the shift required in the numbers to decode the text and prints the math for it^^
    el=decode[1].length();//calculates the length of the message to be decoded
    for (charnum=0; charnum<el; charnum=charnum+1) {
      ec=int(decode[1].charAt(charnum));
      ec=ec+eshift;
      if (charnum==0) {
        decoded=((char)ec)+"";
      } else {
        decoded+=((char)ec);
      }
    }
  }
  String decmsg() {
    return(decoded);
  }
}