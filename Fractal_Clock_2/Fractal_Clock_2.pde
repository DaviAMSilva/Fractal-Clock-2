int amount = 7;
float decreaseRatio = 0.7;

boolean showHourHand = true;

float secAngle, minAngle, hourAngle;

void setup() {
  size(700, 700);
  //frameRate(1);

  colorMode(HSB);
}

void draw() {
  secAngle = map(second() + (millis()/1000) % 1, 0, 60, -HALF_PI, 3*QUARTER_PI);
  minAngle = secAngle / 60 + map(minute(), 0, 60, -HALF_PI, 3*QUARTER_PI);
  hourAngle = minAngle / 60 + map(hour(), 0, 12, -HALF_PI, 3*QUARTER_PI);

  translate(width / 2, height / 2);
  background(0, 0, 100);

  //draws the clock indicators
  stroke(0, 0, 0);
  strokeWeight(10);
  for (int i = 0; i < 12; i++) {
    push();
    rotate(map(i, 0, 12, 0, TWO_PI));
    point(0, width / 2 - 50);
    pop();
  }

  // recursevely drawinw the clock
  strokeWeight(0.3);
  drawClock(0, 0, 100, amount, 0);
}

void keyTyped() {
  amount++;
}
