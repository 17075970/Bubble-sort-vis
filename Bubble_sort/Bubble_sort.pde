int[] list = new int[100];
int k = 1, i = 0;

void setup(){
  size(1200, 800);
  
  for(int n = 0; n < list.length; n++){
    list[n] = round(random(0, 800));
  }
}

void draw(){
  if(k == list.length - i){
    k = 1;
    i++;
  }
  
  if(list[k] < list[k - 1]){
    int temp = list[k];
    list[k] = list[k - 1];
    list[k - 1] = temp;
  }
  if(i < list.length - 1){
    k++;
  }
  int x = 0;
  
  background(0);
  noStroke();
  
  for(int n = 0; n < list.length; n++){
    if(n == k) fill(255, 0, 0);
    else if(n == k - 1) stroke(0, 255, 0);
    else stroke(255);
    line(x, height, x, height - list[n]);
    x++;
  }
  
  //for(int n : list) print(n + " ");
  //println();
  //delay(20);
}

void mousePressed(){
  for(int n = 0; n < list.length; n++){
    list[n] = round(random(0, 800));
  }
  i = 0;
  k = 1;
}
