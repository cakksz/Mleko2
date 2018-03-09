var lenght = 30;
x = y = 100;
function setup() {
  // put setup code here
  createCanvas(600, 600);
}

function draw() {
  background(200);
  dx = mouseX - x;
  dy = mouseY - y;
  anglel = atan2(dy, dx);
  x = mouseX (cos(angle) * 30);
  y = mouseY (sin(angle) * 30);
  rect(x,y, 30, 30);
}
