(
SynthDef(\primero, {arg freq=300, amp=0.5, vol=0.5;
	var signal;
	signal=SinOsc.ar(freq);
	Out.ar(0, Pan2.ar(signal, amp, vol));
}).send(s);
)
Synth(\primero);
(
d = Pdef(\sec4, Pbind(\instrument, \sine,
	\dur, 0.7,
	\amp, 0.8,
	\freq, 600,
	\at, 0.01, \rel, 0.01,
	\out, 0
))
);

d.play.quant(6);
d.stop; 