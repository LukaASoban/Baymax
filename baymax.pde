import processing.opengl.*;

float time = 0;  // keep track of passing of time

void setup() {
  size(800, 800, P3D);  // must use 3D here !!!
  noStroke();           // do not draw the edges of polygons
}

// Draw a scene with a cylinder, a sphere and a box
void draw() {
  
  resetMatrix();  // set the transformation matrix to the identity (important!)

  background(0);  // clear the screen to black
    
  // set up for perspective projection
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);
  
  //time++;
  beginCamera();
  // place the camera in the scene (just like gluLookAt())
  camera (0.0, -20.0, 80.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  rotateY(time * PI/14);
  endCamera();
 

    
  // create an ambient light source
  ambientLight (102, 102, 102);
  
  // create two directional light sources
  lightSpecular (204, 204, 204);
  directionalLight (102, 102, 102, -0.7, -0.7, -1);
  directionalLight (152, 152, 152, 0, 0, -1);
  
  
  
  
  // Draw the top body part of Baymax /////////////////////////////  
  pushMatrix();

  topBody();  
  
  popMatrix();
  //////////////////////////////////////////////////////////////////
  
  
  
  //////////// Draw the Head of Baymax /////////////////////////////
  pushMatrix();
  
  head();
  
  popMatrix();
  
  
  /////////////Draw the eyes of Baymax /////////////////////////////
  pushMatrix();
  
  rightEye();
  
  popMatrix();

  /////////////Draw the letft eye of Baymax /////////////////////////////
  pushMatrix();
    
  leftEye();
  
  popMatrix();
  
  /////////////Draw the mouth of Baymax /////////////////////////////
  pushMatrix();
  
  mouth();
  
  popMatrix();
  
  
  // Draw the right arm of Baymax
  pushMatrix();
  
  rightArm();
  
  popMatrix();
  
  //Draw right forearm
  
  pushMatrix();
  rightForearm();
  popMatrix();
  
  //draw the right hand thumb
  pushMatrix();
  rightThumb();
  popMatrix();
  
  //draw right hand index finger
  pushMatrix();
  rightIndexFinger();
  popMatrix();
  
  //draw right hand middle finger
  pushMatrix();
  rightMiddleFinger();
  popMatrix();
  
  //draw right hand pinky
  pushMatrix();
  rightPinky();
  popMatrix();
    
  
  
  // Draw the left arm of Baymax
  pushMatrix();
  leftArm();  
  popMatrix();
  
  //Draw left forearm
  pushMatrix();
  leftForearm();
  popMatrix();
  
  //draw the left hand thumb
  pushMatrix();
  leftThumb();
  popMatrix();
  
  //draw the left index finger
  pushMatrix();
  leftIndexFinger();
  popMatrix();
  
  //draw the left middle finger
  pushMatrix();
  leftMiddleFinger();
  popMatrix();
  
  //draw the left pinky finger
  pushMatrix();
  leftPinky();
  popMatrix();
 
  

  // Draw the body of Baymax
  pushMatrix();
  body();
  popMatrix();
  
 
  //Draw the right leg of Baymax
  pushMatrix();
  rightLeg();  
  popMatrix();
 
  //Draw left leg of Baymax
  pushMatrix();
  leftLeg();  
  popMatrix();
   
 
  // step forward in time
  time += 0.05;
}



void topBody() {
    // diffuse (fill), ambient and specular material properties
  fill (255, 255, 255);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate (0, -10, 0);
  scale(1.15,1.5,1);
  sphere (14);
  
  
  if(frameCount % 40 > 10) {
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  translate(5,-8,10.25);
  scale(0.85,0.5,0.5);
  rotateX(PI/1.45);
  rotateZ(-PI/5.5);
  cylinder(2, 0.5,32);
}

void head() {
  fill (255, 255, 255);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(0,-32,2);
  rotateX(-PI/16);
  scale(1.5,1.0,1.5);
  sphere(4);
}

void rightEye() {
 /* RIGHT SUB PART*/
  fill(0,0,0);
  
  translate(-3.0,-32,7.25);
  rotateY(-PI/8);
  scale(-1.2,1.2,0.3);
  sphere(0.75); 
}

void leftEye() {
  /* LEFT SUB PART*/
  fill(0,0,0);
  
  translate(3.0,-32,7.25);
  rotateY(PI/8);
  scale(-1.2,1.2,0.3);
  sphere(0.75);
}

void mouth() {
  /* Mouth SUB PART*/
  fill(0,0,0);
  
  translate(0,-32,7.5);
  scale(-5,0.25,0.75);
  box(1);
}

void rightArm() {
 fill(255,255,255);
 ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-15,-20,0);
  rotateZ(-PI/4);
  scale(2,1,1);
  sphere(5); 
}

void rightForearm() {
  fill(255,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-22,-10,0);
  rotateZ(-PI/2.5);
  scale(2,1,1);
  sphere(5);
}

void rightThumb() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-22,-3.5,1.25);
  sphere(2);
  translate(0.5,0.5,0.75);
  rotateZ(-PI/12);
  rotateX(PI/32);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void rightIndexFinger() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-25,-2,1.5);
  rotateZ(-PI/12);
  rotateX(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void rightMiddleFinger() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-25,-1.75,-0.5);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void rightPinky() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(-24.5,-2.5,-2.15);
  rotateZ(-PI/12);
  rotateX(-PI/8);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void leftArm() {
  fill(255,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(15,-20,0);
  rotateZ(PI/4);
  scale(2,1,1);
  sphere(5);
}

void leftForearm() {
  fill(255,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(22,-10,0);
  rotateZ(PI/2.5);
  scale(2,1,1);
  sphere(5);
}

void leftThumb() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(22,-3.5,1.25);
  sphere(2);
  translate(-0.5,0.5,0.75);
  rotateZ(PI/12);
  rotateX(PI/32);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(-PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void leftIndexFinger() {
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(25,-2,1.5);
  rotateZ(PI/12);
  rotateX(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void leftMiddleFinger(){
  fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(25,-1.75,-0.5);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void leftPinky() {
   fill(0,255,255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  translate(24.5,-2.5,-2.15);
  rotateZ(PI/12);
  rotateX(-PI/8);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
  rotateZ(PI/12);
  cylinder(1,1,32);
  translate(0,1,0);
  sphere(1);
}

void body() {
  fill (255, 255, 255);
  ambient (50, 50, 50);
  specular (155, 155, 155);
  shininess (15.0);
  
  sphereDetail (40);
  sphere (18); 
}

void rightLeg() {
  fill (255, 255, 255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  sphereDetail (40);
  translate (-8, 8, 0); 
  rotateZ(-PI/24);
  cylinder (7.0, 12.0, 32); //leg
  translate(0,12,0);
  sphere(7.0);

}

void leftLeg() {
  fill (255, 255, 255);
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (5.0);            // set specular exponent
  
  sphereDetail (40);
  translate (8, 8, 0);
  rotateZ(PI/24);
  cylinder (7.0, 12.0, 32);
  translate(0,12,0);
  sphere(7.0);
}

// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder (float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap

  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}