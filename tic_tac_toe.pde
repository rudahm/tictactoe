void board() { 
  char[][] JavaCharArray = {{'s', 's', 's'},{'s', 's', 's'},{'s', 's', 's'}}; 
  for (int i=0; i<JavaCharArray.length; i++) {
    System.out.println(JavaCharArray[i]);
    noLoop(); 
  }
} 

void draw(){ 
  board(); 
  //noLoop(); 
} 
