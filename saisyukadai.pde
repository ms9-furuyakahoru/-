float baseH = 150;
float armL1 = 60;
float armL2 = 55;
float armL3 = 26;
float armL4 = 15;
float armW1 = 5;
float armW2 = 5;
float armW3 = 1;
float armW4 = 5;
float angle1 = 0;
float l2 = 0;
float l3 = 0;
float l4 = 0;
float l5 = 0;
float pe = 3.0;
float dif = 1.5;


void setup(){
  size(800, 600, P3D);
  //background(255);
  
  frameRate(30);
 
  camera(150, 150, 150, 0, 0, 100, 0, 0, -1);
  
  noStroke();  
  
}

void draw(){
  
  background(#BBDAFA);
  
  if(keyPressed){
    if(key == 's'){
      angle1 = angle1 + pe;
    }
    if(key == 'S'){
      angle1 = angle1 - pe;
    }
    if(key == 'e'){
      l2 = l2 + dif;
      if(l2 >= 50)
      l2 = 50;
    }
    if(key == 'E'){
      l2 = l2 - dif;
      if(l2 < 0)
      l2 = 0;
      
    }
    if(key == 'h'){
      l3 = l3 + dif;
      if(l3 >= 13)
      l3 = 13;
    }
    if(key == 'H'){
      l3 = l3 - dif;
      if(l3 < 0)
      l3 = 0;
    }
    if(key == 'k'){
      l4 = l4 + dif;
      if(l4 >= 10)
      l4 = 10;
    }
    if(key == 'K'){
      l4 = l4 - dif;
      if(l4 < 0)
      l4 = 0;
    }
  }
  
  //base
  translate(0,0,baseH/2);
  fill(#0821FA);
  box(5,5,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-2.5,baseH/2+armW1/2);
  fill(#FAE608);
  box(armW1,armL1,armW1);
  
  //2nd link
  translate(0,armL2/2-armL1/2+5+l2,-armW2);
  fill(#DD08FA);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(-armW2/2+armW3/2, armL2/2-10, -armW2/2-armL3/2);
  fill(#08FA4A);
  box(armW3,20,armL3);
  
  //4th link
  translate(armW3, 0, -l3);
  fill(#08FA4A);
  box(armW3,20,armL3);
  
  //5th link
  translate(armW3, 0, -l3);
  fill(#08FA4A);
  box(armW3,20,armL3);
  
  //6th link
  translate(armW3, 0, -l3);
  fill(#08FA4A);
  box(armW3,20,armL3);
  
  //7thlink
  translate(armW3, 0, -l3);
  fill(#08FA4A);
  box(armW3,20,armL3);
  
  //8thlink
  translate(-4*armW3/2, 10-2.5, -armL3/2-armL4/2);
  fill(random(255),random(255),random(255));
  box(armW4, 5, armL4);
  
  //9thlink
  translate(0, -15+l4, 0);
  fill(random(255),random(255),random(255));
  box(armW4, 5, armL4);

}
