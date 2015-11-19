String[] encode;//encode array
int shift1;//encode shift one
int shift2;//encode shift two
int eshift;//the integer for how much the numbers should shift to encode the message
int ec;//encode character one
int ec2;//encode character two
int el;//length of mesage to be encoded
int charnum;//the placement number of the character in the message to be encoded
String encmsg;//encoded message
void setup() {
  encode=loadStrings("encode.txt");// load the text that is to be encoded as an array
  size(1000, 100);
  background(255);
}
void draw() {
  shift1=(int(encode[0].charAt(0)));
  shift2=(int(encode[0].charAt(1)));
  eshift=shift2-shift1;//Calculates the shift required in the numbers to encode the text and prints the math for it^^
  el=encode[1].length();//calculates the length of the message to be encoded
  for (charnum=0; charnum<el; charnum=charnum+1) {
    ec=int(encode[1].charAt(charnum));
    ec=ec+eshift;
    //print((char)ec);
    if (charnum==0) {
      encmsg = ((char)ec)+"";
    } else {
      encmsg += ((char)ec);
    }
  }
  print(encmsg);
  fill(0);
  text(encmsg, 20, 20);
  noLoop();
}