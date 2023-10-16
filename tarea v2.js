shape().color(0.1,0.4,0.9).modulateScale(osc(30,0.01), 0.5, 1)
  noise(6,.05)
.modulateScrollY(osc(50),0.7,0.02)
.mult( osc(9,0, ()=>Math.sin(time/1.5)+2 ) )
.mult(
    noise(9,.03).brightness(1.2).contrast(20)
    .mult( osc(9,0, ()=>Math.sin(time/3)+13 ) )
)
  .out()