String[] encode;

void setup () {
  encode = loadStrings("encode.txt");
}

void draw () {
  int c1 = int(encode[0].charAt(0));
  println(c1);
}