class Planet{
  float radius;
  float angle;
  float distance;
  float orbitspeed;
  Planet[] planets;
  
  PShape globe;
  
  Planet(float r, float d, float o, PImage img) {
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    orbitspeed = o;
    noStroke();
    noFill();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
  }
  void orbit() {
   angle = angle - orbitspeed;   
   if(planets != null){
      for(int i = 0; i<  planets.length; i++){
        planets[i].orbit();
      }
    }
  }
  
  void Moon(int total){   
   planets = new Planet[total]; 
   for(int i = 0; i< planets.length; i++){
    planets[i] = new Planet(radius/4.5, 45, 0.03, moonTexture);
   }
 }
  
  void show(){
    pushMatrix();
    rotateY(angle);
    noStroke();
    translate(distance,0);
    shape(globe); 
    if(planets != null){
      for(int i = 0; i<  planets.length; i++){
        planets[i].show();
      }
    }
    popMatrix();
  }
  
}
