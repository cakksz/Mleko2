function setup() {
  // put setup code here
  createCanvas(1700, 1600);
}

function draw() {
  // put drawing code here
  fill('#00ff00');
  strokeWeight('10');
  stroke('red');
  ellipse(120, 200, 30, 80);
  strokeWeight(20);
  fill('#9933CC');
  stroke('green');
  ellipse(50, 100,80, 30);

  strokeWeight(5);
  stroke('black');
  fill('black');
  line(10, 10, 60, 60);
  line(60, 10, 10, 60);

  stroke('green');
  fill('green');
  point(150, 100);

  stroke('blue');
  fill('blue');
  rect(200,200,300,10);

  stroke('red');
  fill('red');
  triangle(850,200,600,50,500,200);
}
