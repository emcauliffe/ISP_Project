class Encoder {
  int shift1;//encode shift one
  int shift2;//encode shift two
  int eshift;//the integer for how much the numbers should shift to encode the message
  int ec;//encode character one
  int ec2;//encode character two
  float el;//length of mesage to be encoded
  String encoded;//encoded message
  String[] encode;//encode array
  float completion;//Percentage of the message encoded
  PrintWriter outputencoded;//output the encoded text to decode.txt
  int charnum;//current character being encoded
  int charperframe;//the amount of characters to be encoded per refresh of the screen

  Encoder() {
    encode=loadStrings("Input/encode.txt");// load the text that is to be encoded as an array;
    outputencoded=createWriter("Output/encode.txt");
    shift1=(int(encode[0].charAt(0)));//convert the first character in the key to ASCII
    shift2=(int(encode[0].charAt(1)));//convert the second character in the key to ASCII
    eshift=shift2-shift1;//Subtracts the ASCII of the first number from the second number. This calculates the shift required in the cypher
    el=encode[1].length();//calculates the length of the message to be encoded
  }

  void update() {

    if (el==0) {
      fill(250, 0, 0);
      text("ATTENTION: THERE IS NO MESSAGE TO BE ENCRYPTED! PLEASE OPEN \"encode.txt\" AND FOLLOW THE INSTRUCTIONS!", 10, 150, 980, 738);
    } else {
      for (charperframe=0; charperframe<1; charperframe++) {
        ec=int(encode[1].charAt(charnum));//converts every character to ASCII
        ec=ec+eshift;//shifts the ASCII code of each character in the message by eshift 
        completion=((charnum/el)*100);//calculates how far the throuugh the 
        fill(0);
        rect(100, 364, (completion*8), 10);
        println(completion);
        if (charnum==0) {
          encoded=((char)ec)+"";
        } else {
          encoded+=((char)ec);
        }
        if (charnum==el) {
          background(255);
          println("");
          print(encoded);
          textSize(15);
          textAlign(CENTER);
          text("Encoded text is also avaliable in line 8 of \"Output/encode.txt\"", 400, 15);
          textAlign(LEFT);
          fill(0);
          text(encoded, 10, 50, 980, 738);
          outputencoded.print(encoded);
          outputencoded.flush();
          outputencoded.close();
          noLoop();
        }
        charnum=charnum+1; //moves to next character
      }
    }
  }
}