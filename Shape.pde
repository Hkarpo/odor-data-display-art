float[] px;
float[] py;
float[] pz;
float[] shapeRadio;

int cuantos = 10000;
Pelo[] lista_0;
Pelo[] lista_1;
Pelo[] lista_2;
Pelo[] lista_3;
Pelo[] lista_4;
Pelo[] lista_5;
Pelo[] lista_6;
Pelo[] lista_7;
Pelo[] lista_8;
Pelo[] lista_9;
Pelo[] lista_10;
Pelo[] lista_11;
Pelo[] lista_12;
Pelo[] lista_13;
Pelo[] lista_14;
Pelo[] lista_15;
Pelo[] lista_16;
Pelo[] lista_17;

void initShape(){
  px=new float[length];
  py=new float[length];
  pz=new float[length];
  shapeRadio=new float[20];
  for(int i=0;i<length;i++){
    px[i]=(int)random(100,900);
    py[i]=(int)random(i*96+40,i*96+80);
    pz[i]=(int)random(-10,10);
    shapeRadio[i]=(int)random(30,60);    
  }
  
  lista_0 = new Pelo[cuantos];
  for (int i = 0; i < lista_0.length; i++) {
    lista_0[i] = new Pelo(shapeRadio[0]);
  }
  
  lista_1 = new Pelo[cuantos];
  for (int i = 0; i < lista_1.length; i++) {
    lista_1[i] = new Pelo(shapeRadio[1]);
  }
  
   lista_2 = new Pelo[cuantos];
  for (int i = 0; i < lista_2.length; i++) {
    lista_2[i] = new Pelo(shapeRadio[2]);
  }
  
  lista_3 = new Pelo[cuantos];
  for (int i = 0; i < lista_3.length; i++) {
    lista_3[i] = new Pelo(shapeRadio[3]);
  }
  
  lista_4 = new Pelo[cuantos];
  for (int i = 0; i < lista_4.length; i++) {
    lista_4[i] = new Pelo(shapeRadio[4]);
  }
  
  lista_5 = new Pelo[cuantos];
  for (int i = 0; i < lista_5.length; i++) {
    lista_5[i] = new Pelo(shapeRadio[5]);
  }
  
   lista_6 = new Pelo[cuantos];
  for (int i = 0; i < lista_6.length; i++) {
    lista_6[i] = new Pelo(shapeRadio[6]);
  }
  
  lista_7 = new Pelo[cuantos];
  for (int i = 0; i < lista_7.length; i++) {
    lista_7[i] = new Pelo(shapeRadio[7]);
  }
  
  lista_8 = new Pelo[cuantos];
  for (int i = 0; i < lista_8.length; i++) {
    lista_8[i] = new Pelo(shapeRadio[8]);
  }
  
  lista_9 = new Pelo[cuantos];
  for (int i = 0; i < lista_9.length; i++) {
    lista_9[i] = new Pelo(shapeRadio[9]);
  }
  
   lista_10 = new Pelo[cuantos];
  for (int i = 0; i < lista_10.length; i++) {
    lista_10[i] = new Pelo(shapeRadio[10]);
  }
  
  lista_11 = new Pelo[cuantos];
  for (int i = 0; i < lista_11.length; i++) {
    lista_11[i] = new Pelo(shapeRadio[11]);
  }
  
  lista_12 = new Pelo[cuantos];
  for (int i = 0; i < lista_12.length; i++) {
    lista_12[i] = new Pelo(shapeRadio[12]);
  }
  
  lista_13 = new Pelo[cuantos];
  for (int i = 0; i < lista_13.length; i++) {
    lista_13[i] = new Pelo(shapeRadio[13]);
  }
  
  lista_14 = new Pelo[cuantos];
  for (int i = 0; i < lista_14.length; i++) {
    lista_14[i] = new Pelo(shapeRadio[14]);
  }
  
  lista_15 = new Pelo[cuantos];
  for (int i = 0; i < lista_15.length; i++) {
    lista_15[i] = new Pelo(shapeRadio[15]);
  }
  
  lista_16 = new Pelo[cuantos];
  for (int i = 0; i < lista_16.length; i++) {
    lista_16[i] = new Pelo(shapeRadio[16]);
  }
  
  lista_17 = new Pelo[cuantos];
  for (int i = 0; i < lista_17.length; i++) {
    lista_17[i] = new Pelo(shapeRadio[17]);
  }
  noiseDetail(3);
}

void drawShape(){    
  float rxp = (mouseX-(width/2)) * 0.005;
  float ryp = (mouseY-(height/2)) * 0.005;
  rx = rx*0.9 + rxp*0.1;
  ry = ry*0.9 + ryp*0.1;
  fill(0);
  noStroke();

  pushMatrix(); 
  translate(px[0], py[0],pz[0]);
  rotateY(rx);
  rotateX(ry); 
  sphere(shapeRadio[0]);
  for (int i = 0; i < lista_0.length; i++) {
    lista_0[i].dibujar(shapeRadio[0]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[1], py[1],pz[1]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[1]);
  for (int i = 0; i < lista_1.length; i++) {
    lista_1[i].dibujar(shapeRadio[1]);
  }
  popMatrix();
  
   pushMatrix();
  translate(px[2], py[2],pz[2]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[2]);
  for (int i = 0; i < lista_2.length; i++) {
    lista_2[i].dibujar(shapeRadio[2]);
  }
  popMatrix();
  
   pushMatrix();
  translate(px[3], py[3],pz[3]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[3]);
  for (int i = 0; i < lista_3.length; i++) {
    lista_3[i].dibujar(shapeRadio[3]);
  }
  popMatrix();
  
  pushMatrix(); 
  translate(px[4], py[4],pz[4]);
  rotateY(rx);
  rotateX(ry); 
  sphere(shapeRadio[4]);
  for (int i = 4; i < lista_4.length; i++) {
    lista_4[i].dibujar(shapeRadio[4]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[5], py[5],pz[5]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[5]);
  for (int i = 0; i < lista_5.length; i++) {
    lista_5[i].dibujar(shapeRadio[5]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[6], py[6],pz[6]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[6]);
  for (int i = 0; i < lista_6.length; i++) {
    lista_6[i].dibujar(shapeRadio[6]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[7], py[7],pz[7]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[7]);
  for (int i = 0; i < lista_7.length; i++) {
    lista_7[i].dibujar(shapeRadio[7]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[8], py[8],pz[8]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[8]);
  for (int i = 0; i < lista_8.length; i++) {
    lista_8[i].dibujar(shapeRadio[8]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[9], py[9],pz[9]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[9]);
  for (int i = 0; i < lista_9.length; i++) {
    lista_9[i].dibujar(shapeRadio[9]);
  }
  popMatrix(); 
  
  pushMatrix();
  translate(px[10], py[10],pz[10]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[10]);
  for (int i = 0; i < lista_10.length; i++) {
    lista_10[i].dibujar(shapeRadio[10]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[11], py[11],pz[11]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[11]);
  for (int i = 0; i < lista_11.length; i++) {
    lista_11[i].dibujar(shapeRadio[11]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[12], py[12],pz[12]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[12]);
  for (int i = 0; i < lista_12.length; i++) {
    lista_12[i].dibujar(shapeRadio[12]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[13], py[13],pz[13]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[13]);
  for (int i = 0; i < lista_13.length; i++) {
    lista_13[i].dibujar(shapeRadio[13]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[14], py[14],pz[14]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[14]);
  for (int i = 0; i < lista_15.length; i++) {
    lista_14[i].dibujar(shapeRadio[14]);
  }
  popMatrix();  
  
  pushMatrix();
  translate(px[15], py[15],pz[15]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[15]);
  for (int i = 0; i < lista_15.length; i++) {
    lista_15[i].dibujar(shapeRadio[15]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[16], py[16],pz[16]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[16]);
  for (int i = 0; i < lista_16.length; i++) {
    lista_16[i].dibujar(shapeRadio[16]);
  }
  popMatrix();
  
  pushMatrix();
  translate(px[17], py[17],pz[17]);
  rotateY(rx);
  rotateX(ry);
  sphere(shapeRadio[17]);
  for (int i = 0; i < lista_17.length; i++) {
    lista_17[i].dibujar(shapeRadio[17]);
  }
  popMatrix();

}
