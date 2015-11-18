String[] encode; //encode array
int shift1; //encode shift one
int shift2; //encode shift two
int eshift; //the integer for how much the numbers should shift to encode the message
int ec1; //encode character one
int ec2; //encode character two
int el; //length of mesage to be encoded

void setup () {
  encode = loadStrings("encode.txt"); // load the text that is to be encoded as an array
}

void draw () {
  shift1 = (int(encode[0].charAt(0)));
  shift2 = (int(encode[0].charAt(1)));
  eshift = shift2 - shift1;
  println(shift1);
  println(shift2);
  println(eshift);
  //^^Calculates the shift required in the numbers to encode the text and prints the math for it^^

  ec1 = int(encode[1].charAt(0));
  ec1 = ec1 + eshift;
  println(ec1);
  println((char)ec1);
  
  ec2 = int(encode[1].charAt(1));
  ec2 = ec2 + eshift;
  println((char)ec2);
  el = encode[1].length();
  println(el);
  
  text(((char) ec1), 20, 20);
  
  noLoop();
}