import peasy.*;

PeasyCam cam;
Planet sun;
Planet earth;
Planet mercury;
Planet venus;
Planet mars;

PImage sunTexture;
PImage earthTexture;
PImage mercuryTexture;
PImage venusTexture;
PImage marsTexture;
PImage moonTexture;
PImage star;
float Spin;

void setup(){
 size(1200,900, P3D);
 cam = new PeasyCam(this,0,-100,-50, 1000);
  
 sunTexture = loadImage("sun.jpg");
 earthTexture = loadImage("earth.jpg");
 mercuryTexture = loadImage("mercury.jpg");
 venusTexture = loadImage("venus.jpg");
 marsTexture = loadImage("mars.jpg");
 moonTexture = loadImage("moon.jpg");
 star = loadImage("stars.jpg");

 
 sun = new Planet(75, 0, 0, sunTexture);
 mars= new Planet(50, 650, 0.009, marsTexture);
 earth = new Planet(30, 400, 0.02, earthTexture);
 earth.Moon(1);
 venus = new Planet(27, 280, 0.03, venusTexture);
 mercury = new Planet(18, 180, 0.04, mercuryTexture);
 
}
void Name(){
 String name = "18520688 - Trịnh Lê Giang"; 
 Spin = Spin - 0.02;
 textSize(30);
 fill(255);
 rotateY(Spin);
 text(name,0,-80,0);
 textAlign(CENTER);
}

void draw(){
 background(star);
 noFill(); 
 
 pointLight(255, 255, 255, 0, 0, 0);
 ambientLight(102, 102, 102);
 /* I didn't know how to make the sun to become the light source 
 and make it glow :> */
 
 sun.show();
 earth.show();
 earth.orbit();
 mercury.show();
 mercury.orbit();
 venus.show();
 venus.orbit();
 mars.show();
 mars.orbit();
 Name();
}
