void game() {
     
  rectMode(CENTER);
  

  
     
    image(img1, 0, 0);
  int i = 0;
  while (i<myObjects.size()) {
    GameObjects myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
  
  //pause button
  fill(255);
  stroke(255);
  strokeWeight(3);
  rect(730, 40, 50, 50);
  fill(0);
  textSize(40);
  text("||", 735, 80);

}

void gameClicks() {

//  rect(750, 40, 50, 50);
if (mouseX > 750 && mouseX < 800 && mouseY > 40 && mouseY <90){
mode = PAUSE;
} 

}
