class Pelo
{
  /*float z = random(-radio, radio);
  float phi = random(TWO_PI);
  float largo = random(1.15, 1.2);
  float theta = asin(z/radio);*/
  
  float radio;
  float z;
  float phi ;
  float largo ;
  float theta ;

  Pelo(float shapeRadio) { // what's wrong with a constructor here
    radio=shapeRadio;
    z = random(-radio, radio);
    phi = random(TWO_PI);
    largo = random(1.15, 1.2);
    theta = asin(z/radio);
  }

  void dibujar(float shapeRadio) {
 
    float off = (noise(millis() * 0.0005, sin(phi))-0.5) * 0.3;
    float offb = (noise(millis() * 0.0007, sin(z) * 0.01)-0.5) * 0.3;

    float thetaff = theta+off;
    float phff = phi+offb;
    float x = shapeRadio * cos(theta) * cos(phi);
    float y = shapeRadio * cos(theta) * sin(phi);
    float z = shapeRadio * sin(theta);

    float xo = shapeRadio * cos(thetaff) * cos(phff);
    float yo = shapeRadio * cos(thetaff) * sin(phff);
    float zo = shapeRadio * sin(thetaff);

    float xb = xo * largo;
    float yb = yo * largo;
    float zb = zo * largo;

    strokeWeight(1);
    beginShape(LINES);
    stroke(0);
    vertex(x, y, z);
    stroke((int)random(100,255), 150);
    vertex(xb, yb, zb);
    endShape();
  }
}
