(
Pdef(\sec16,
	Pbind(\instrument, \saw,
	\dur, 1/4,
\amp, Pseq([0.5, 0.04, 0.5, 0.5, 0.04, 0.5, 0.5, 0.04, 0.5, 0.04, 0.5, 0.5, 0.5, 0.5, 0.04, 0.5],inf),
		\out,15
)).stop
);

(
Pdef(\bateria, Ppar([
	Pbind(\instrument, \wnoise,
		\dur, 1/8,
\amp, Pseq([0.5, 0.1, 0.5, 0.5, 0.1, 0.5, 0.5, 0.1, 0.5, 0.1, 0.5, 0.5, 0.5, 0.5, 0.1, 0.5],inf),
	),
	Pbind(\instrument, \sine,
		\dur, 1/4,
\amp, Pseq([0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0],inf),

	)
])).stop
)