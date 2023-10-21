PImage penguin;
PImage sealImage;

Seal[] seals = new Seal[10];

void setup() {
  size(500, 500);
  penguin = loadImage("penguin.png"); // Load the penguin image
  sealImage = loadImage("seal.png"); // Load the seal image
  for (int i = 0; i < seals.length; i++) {
    seals[i] = new Seal();
  }
}

void draw() {
  background(173,216,230);
  image(penguin, mouseX, mouseY, 50, 50); // Display the penguin on the cursor

  for (int i = 0; i < seals.length; i++) {
    seals[i].swim();
    seals[i].display();
  }
}

class Seal {
  int myX, myY;
  int a, b; // Declare a and b variables

  Seal() {
    myX = (int)(Math.random() * 501);
    myY = (int)(Math.random() * 501);
  }

  void display() {
    image(sealImage, myX, myY, 50, 50); // Use myX and myY to position the sealImage
  }

  void swim() {
    if (myX < mouseX)
      a = 2;
    if (myY < mouseY)
      b = 2;
    if (myX > mouseX)
      a = 4;
    if (myY > mouseY)
      b = 4;

    myX += (int)(Math.random() * 8) - a;
    myY += (int)(Math.random() * 8) - b;
  }
}
