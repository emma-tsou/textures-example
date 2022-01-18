PImage diamond;
float rotx, roty;

void setup() {
  size(800, 800, P3D);
  diamond = loadImage("diamond.png");
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, 0);
  scale(200);
  rotateX(rotx);
  rotateY(roty);

  beginShape();
  texture(diamond);

  //top
  // x, y, z, tx, ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, -1, 0, 1, 0);
  vertex(1, -1, 1, 1, 1);
  vertex(0, -1, 1, 0, 1);
  //front
  vertex();
  vertex();
  vertex();
  vertex();
  //back
  vertex();
  vertex();
  vertex();
  vertex();
  //left
  vertex();
  vertex();
  vertex();
  vertex();
  //right
  vertex();
  vertex();
  vertex();
  vertex();
  endShape();

  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
