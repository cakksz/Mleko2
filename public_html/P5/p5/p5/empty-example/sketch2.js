var x, y; //współrzędne obiektu

function setup() {
  // put setup code here
  createCanvas(700, 600);
  x = 675;
  y = 575;
}

function draw() {
  background(200);
  // put drawing code here
  r = random(255);
  g = random(255);
  b = random(255);
  fill(r,g,b);
  strokeWeight(1);
  stroke(r, g, b);
  if (x > 14)
    x = x -1;
  if (y > 14)
      y = y -1;
  ellipse( x, y, 30, 30);


}
