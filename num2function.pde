float maxNum=0;

void readcsv(){ 
 table=loadTable("test.csv");
 int totalRow=table.getRowCount()-1;
 //rowNum=totalRow;
 //println(rowNum);
 if(rowNum==totalRow){
    rowNum=0;
  }
  TableRow row=table.getRow(rowNum);
  for(int i=0;i<length;i++){
      num[i]=row.getFloat(i);
    }
   //table.removeColumn(0);
   //rowNum=0;
   rowNum=rowNum+1;
 //  println("***********");
  // println(rowNum);
}


void num2normalnum(){
  maxNum=abs(num[0]);
  for(int i=1;i<length;i++){
     if(abs(num[i])>maxNum){
         maxNum=abs(num[i]);
     }
  } 
  for(int j=0;j<length;j++){
   //normalNum[j]=abs(num[j]/maxNum*255);
   normalNum[j]=abs(num[j]/maxNum);
  } 
}
void num2music(){
 /*-- for(int i=0;i<length;i++){
    int temp=(int)map(abs(num[i]),0,abs(maxNum),21,108);
  //  println(temp);
    fileName[i]=temp-21;
  }*/
  float sum,d_sum;
  float deviation=0;
  
  sum=0;
  d_sum=0;
  for(int i=0;i<length;i++){
    sum=sum+abs(num[i]);   
  }
  sum=sum/length;
  for(int j=0;j<length;j++){
    d_sum=d_sum+(abs(num[j])-sum)*(abs(num[j])-sum);
  }
  deviation=sqrt(d_sum);
    //fileName[i]=temp-21;
  if(deviation<8){
     freq=(int)map(deviation,0,8,1500,800);
  }
  else freq=500;
  
 // println(abs(maxNum));
  if(abs(maxNum)<2500){
  int i=(int)random(0,length);
  temp=(int)map(abs(num[i]),0,abs(maxNum),0,87);
 // println(temp);
  }
  else temp=(int)random(85,87);  
  
}

void num2function(){
   readcsv();
   num2normalnum();
   num2music(); 
}
