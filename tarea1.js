osc().modulateHue(osc(9),6)
  .color(0,3,0).modulateRepeatY(osc(3), 2, 0.2)
.mult(osc(150, 0.03).thresh(0.4))
  .out()