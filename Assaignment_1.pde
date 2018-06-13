void setup() 
{ 
  size (600, 600);
  background(0);
  fill(255);
  textSize (40);
  text ("Would you like to play a game", 10, 30);

  //First Screen
  textSize(16);
  text ("Click for Intro ", 465, 515, 140, 130);
  fill (255);
  text ("Click for a math game", 400, 545, 180, 130);
  fill (255);
  text ("Click for a non-math game", 360, 575, 250, 130);

  circleX= random(400);
  circleY= random (500);

  a= int(random(10));
  b= int(random(a));
  c= int(random(2));
  println(c);
  // println(answer);
}

//intro
void intro() 
{
  background(#AAAAAA);
  fill(219, 219, 219);
  textSize (40);
  text ("Assaignment 1", 10, 30);
  textSize (16);
  text ("Click on the buttons on the side of the screen to select your game :)", 5, 80);
}

int x= 575;
int w= 575;
int y= 545;
int z= 515;

int a;
int b;
int c;

int answer;
int key;

float circleX;
float circleY;

void draw() {

  noStroke();
  fill (160, 40, 220);
  rect (w, x, 25, 25);
  fill (160, 40, 220);
  rect (w, y, 25, 25);
  fill (160, 40, 220);
  rect (w, z, 25, 25);

  if (mouseX > x && mouseY > z && mousePressed) {
    //background and colour/text settings
    intro();
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (255);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game-->", 410, 575, 190, 130);
  }
  if (mouseX > x && mouseY > y && mousePressed) {
    //background and colour/text settings
    background (0);
    textSize(16);
    fill(219, 219, 219);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (255);
    text ("New Question-->", 450, 545, 140, 130);
    fill (255);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    //Math Game
    fill(255);
    textSize(16);
    text (a, 20, 20);
    text (b, 50, 20);

    //addition
    if (c==0) {
      //formatting
      fill(255);
      textSize(16);
      text ("+", 35, 20);
      //equation: input and check
      answer=a+b;
    }
    //subtraction
    if (c==1) {
      //formatting
      fill(255);
      textSize(16);
      text ("-", 35, 20);
      //equation: input and check
      answer=a-b;
    }    

    //multiplication
    if (c==2) {
      //formatting
      fill(255);
      textSize(16);
      text ("x", 35, 20);
      //equation: input and check
      answer=a*b;
    }
  }
  if (mouseX > x && mouseY > w && mousePressed) {
    //background and colour/text settings
    background (255);
    textSize(16);
    fill(0);
    text ("Intro--> ", 500, 515, 140, 130);
    fill (0);
    text ("Math Game-->", 450, 545, 140, 130);
    fill (0);
    text ("Non-Math Game-->", 410, 575, 190, 130);

    if (mousePressed) {
      //Non-Math Game
      //setup
      fill (0);
      textSize(20);
      text("Click on the circles,", 20, 20);
      //actual game
      ellipse (circleX, circleY, 20, 20);
    }
  }
}

void mousePressed() {
  if (mousePressed == true && mouseX < circleX+30/2 && mouseX > circleX-30/2 && mouseY < circleY+30/2 && mouseY> circleY-30/2) {
    fill(0);
    textSize(15);
    text("good job", 30, 40);
    delay(1000);
    setup();
  } else {
    fill(0);
    text("try again", 30, 40);
    delay(100);
    setup();
  }
}

void keyPressed() {
  //println(answer);
  println(key);
  if (key == answer) {
    fill (255);
    text ("right", 30, 30);
  } else {
    text("wrong", 30, 30);
  }
}
