var x, y; //współrzędne obiektu

function setup() {
  // put setup code here
  createCanvas(700, 600);
  background(200);
}

function draw() {
  noFill();
  noStroke();
  if (mouseIsPressed) { //naciśnięto klawisz myszki
    if (mouseButton === LEFT) {
    fill("red");
    strokeWeight(10);
    stroke('yellow');
    }
    if(mouseButton === CENTER) {
      strokeWieght(3);
      fill(200);
      stroke(200);
      rect(mouseX-10, mouseY-10, 20, 20);
  }
}
  point(mouseX, mouseY);
  //r = random(255);
  //g = random(255);
  //b = random(255);


}
