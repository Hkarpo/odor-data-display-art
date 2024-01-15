void initSound(){
  fileName=new int[length];
  String filepath;
  minim=new Minim(this);
  file=new AudioPlayer[88];
  for(int i=0;i<88;i++){
    filepath="./data/"+Integer.toString(i+21)+".wav";
    file[i]=minim.loadFile(filepath);
  }
}