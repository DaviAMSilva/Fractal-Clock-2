void drawClock(float x, float y, float size, int number, float r) {
  push();
  translate(x, y);

  if (number != amount) stroke(map(number, amount - 1, 0, 0, 120), 100, 100);

  line(0, 0, cos(secAngle + r) * size, sin(secAngle + r) * size);
  line(0, 0, cos(minAngle + r) * size * .75, sin(minAngle + r) * size * .75);
  if (showHourHand) line(0, 0, cos(hourAngle + r) * size * .5, sin(hourAngle + r) * size * .5);

  if (number > 0) {
    drawClock(cos(secAngle + r) * size, sin(secAngle + r) * size, size*0.7, number - 1, r + secAngle +HALF_PI);
    drawClock(cos(minAngle + r) * size * .75, sin(minAngle + r) * size * .75, size*0.7, number - 1, r + secAngle +HALF_PI);
    if (showHourHand) drawClock(cos(hourAngle + r) * size * .5, sin(hourAngle + r) * size * .5, size*0.7, number - 1, r + secAngle +HALF_PI);
  }
  pop();
}
