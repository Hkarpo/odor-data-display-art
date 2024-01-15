import processing.serial.*;
import processing.sound.*;
import java.util.*;
import java.io.*;
import ddf.minim.*; 

Serial myPort ;
float distance;

PImage img;
int column;
int row;

Table table;
float[] num;
float[] normalNum;
int rowNum;
color[] colorNum;
int length;

int[] fileName;
int freq=500;

Minim minim;
AudioPlayer[] file;

int temp;


//float radio = 200;
float rx = 0;
float ry =0;

float vy=600;
float vx=600;
float vz=0;



void setup(){
  size(1080,1920,P3D);
 // img=loadImage("bg.jpg");
  temp=0;
  initTable();
  initSound();
  initShape();
  //frameRate(20);
 // String arduinoDuankou=Serial.list()[0];//COM3 port
  //myPort=new Serial(this,arduinoDuankou,9600); 
//  radio = 20;
}

void draw(){
  //Make the background black
  num2function();
 // getDistance();
  background(0);
  drawShape();
  
  for(int i=0;i<length;i++){
    if(shapeRadio[i]<100){
    shapeRadio[i]=map(abs(num[i]),0,maxNum,40,100);
    }
  }
 /* if(distance<20&&distance>0){
    if(radio>150){
      radio=radio-0.5;
    
    }
  }
  else 
  {
    if(radio<20){
    radio=radio+0.6;}
    else radio=20;
  }*/
 // thread("playMusic");
}

void playMusic(){
  getDistance();
  println(distance);
  if(distance<20&&distance>0){
      file[temp].play();
      delay(2000);
      file[temp].rewind();}
}

void getDistance(){
  //float distance=200;
  if(myPort.available()>0){
    String inString=myPort.readStringUntil('\n');
    //println(inString);
    inString=inString.trim();
    distance=float(inString);
  }
 // else distance=-200;
 // return distance;
}
