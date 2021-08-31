char[][] board  = {{'-', '-', '-'},{'-', '-', '-'},{'-', '-', '-'}}; 
boolean win = false; 
boolean x_turn = true; 

void setup(){ 
  size(800, 800); 
} 

void draw(){ 
  size(800,800); 
  boardVisuals(); 
  boardArray(); 
  //whichBoxWasClicked();
  //isThisWinningMove();
  //noLoop(); 
}

boolean isThisWinningMove(){ 
  
  char first_symbol = board  [0][0]; 
  if (first_symbol != '-'){ 
    if (board  [1][0] == first_symbol && board  [2][0] == first_symbol){ 
      return true; 
    } 
    
    if (board  [0][1] == first_symbol && board  [0][2] == first_symbol){ 
      return true; 
    } 
      if (board  [1][1] == first_symbol && board  [2][2] == first_symbol){ 
      return true; 
    } 
  } 
  
  first_symbol = board  [0][2]; 
  
  if (first_symbol != '-'){ 
      if (board  [1][2] == first_symbol && board  [2][2] == first_symbol){ 
      return true; 
    } 
    
    if (board  [1][1] == first_symbol && board  [2][0] == first_symbol){ 
      return true; 
    }
  } 
  
  first_symbol = board  [2][0]; 
  if (first_symbol != '-') { 
    if (board  [2][1] == first_symbol && board  [2][2] == first_symbol){ 
      return true; 
    } 
  } 
  
  first_symbol = board  [1][1]; 
  
  if (first_symbol != '-'){ 
    if (board  [1][0] == first_symbol && board  [1][2] == first_symbol){ 
      return true; 
    } 
    
    if (board  [0][1] == first_symbol && board  [2][1] == first_symbol){ 
      return true; 
    } 
  } 
    
  return false; 
} 

void mousePressed(){ 
  System.out.println(mouseX + ", " + mouseY);
  int [] coordinaten = whichBoxWasClicked(mouseX, mouseY);
  if (x_turn) { 
  board [coordinaten[1]][coordinaten[0]] = 'o'; 
  } 
  if (!x_turn) { 
    board [coordinaten[1]][coordinaten[0]] = 'x'; 
  } 
  x_turn = !x_turn; 
  boardArray(); 
  System.out.println(isThisWinningMove()); 
  
  if (isThisWinningMove()){ 
    if (x_turn){ 
      System.out.println("x" + " is the winner" + " click anywhere to start again"); 
      win = true; 
    } 
    if (!x_turn){ 
      System.out.println("o" + " is the winner" + " click anywhere to start again"); 
      win = true; 
    }
  }
  
  if (win) { 
   board  = new char [][] {{'-', '-', '-'}, {'-', '-', '-'}, {'-', '-', '-'}};
   win = false; 
  }
}


 
int [] whichBoxWasClicked(int mousex, int mousey){ 
  int x = -1; 
  int y = -1; 
  if (mousey <= 267) { 
    y = 0; 
  } 
  if (mousey > 267 && mousey < 534){ 
    y = 1; 
  } 
  if (mousey >= 534 && mousey <= 800){ 
    y = 2; 
  } 
  
  if (mousex <= 267){ 
    x = 0; 
  } 
  if (mousex > 267 && mousex <= 533){ 
    x = 1; 
  } 
  if (mousex > 533 && mousex <= 800){ 
    x = 2; 
  } 
  System.out.println(y + " " + x); 
  int [] coordinates_click = {x, y}; 
  return coordinates_click; 
}



void boardVisuals(){ 
  //the 4 outlines of the board 
  int w = width/3; 
  int h = height/3; 
  background(255); 
  line(w,0,w, height);
  line(w*2, 0, w*2, height); 
  line(0, h, width, h); 
  line(0, h*2, width, h*2);
}

void boardArray() { 
  //char[][] board  = {{'-', '-', '-'},{'-', '-', '-'},{'-', '-', '-'}}; 
  for (int i=0; i<board .length; i++) {
    System.out.println(board [i]);
  } 
  //System.out.println(board [1][2]); 
    noLoop(); 
} 
