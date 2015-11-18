String[] encode; //encode array
int shift1; //encode shift one
int shift2; //encode shift two
int eshift; //the integer for how much the numbers should shift to encode the message
int ec1; //encode character one
void setup () {
  encode = loadStrings("encode.txt"); // load the text that is to be encoded as an array
}

void draw () {
  shift1 = (int(encode[0].charAt(0)));
  shift2 = (int(encode[0].charAt(1)));
  eshift = shift2 - shift1;
  //^^Calculates the shift required in the numbers to encode the text
  
  ec1 = int(encode[1].charAt(0));
  ec1 = ec1 + 2;
  println(shift1);
  println(shift2);
  println(eshift);
  println(ec1);
  println((char)ec1);
 
  noLoop();
}