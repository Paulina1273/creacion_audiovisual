//primero activar secuencias y sintes

(
Pdef(\sec16,
	Pbind(\instrument, \sine,
	\dur, 1/8,
		\amp, Pseq([0.9, 0.9, 0.9, 0.9, 0.9, 0.5, 0.5, 0, 0.9, 0.9, 0.9, 0.9, 0.9, 0.5, 0.5, 1.6],inf),
		\out, 15
)).stop
);
//con bateria usar fitro 9, con sec18 filtro 11
(
Pdef(\sec17,
	Pbind(\instrument, \sine3,
	\dur, 1/4,
		\amp, Pseq([0.6, 0.6, 0.6, 0.6, 0.6, 0.3, 0.3, 0, 0.6, 0.6, 0.6, 0.6, 0.6, 0.3, 0.3, 1],inf),
		\out, 17
)).stop
);
//primero pulse,1,/4, fitro 9 pasar a wnoise, 1/8,11 para seguir la frecuencia

(
Pdef(\bateria, Ppar([
	Pbind(\instrument, \wnoise,
		\dur, 1/8,
\amp, Pseq([0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 0, 0, 0, 0.5, 0, 0, 0.5, 0],inf),
		\out, 17

	),
	Pbind(\instrument, \saw,
		\dur, 1/8,
\amp, Pseq([0.5, 0.5, 0.5, 0.8, 0.5, 0, 0.5, 0.5, 0.5, 0.5, 0.8, 0.5, 0, 0, 0, 0],inf),

	),
])).stop
)
//inicia el final, iniciar en 1/8, bajar a 1/4 cuando se pare la bateria
(
Pdef(\sec20,
	Pbind(\instrument, \saw,
	\dur, 1/8,
		\amp, Pseq([0.5, 0.5, 0.5, 0.8, 0.5, 0, 0.5, 0.5, 0.5, 0.5, 0.8, 0.5, 0, 0, 0, 0],inf),
		\out, 9
)).stop
);
//final
(
Pdef(\sec18,
	Pbind(\instrument, \wnoise,
	\dur, 1/8,
		\amp, Pseq([0, 0, 0, 0, 0, 0.2, 0.2, 0.2, 0, 0, 0, 0.2, 0, 0, 0.2, 0],inf),
		\out, 9
)).stop
);
 //al parar sec16 y 17 bajar de 1/2 a 1
(
Pdef(\sec18,
	Pbind(\instrument, \tri,
	\dur, 1/2,
		\amp, Pseq([0.9, 0.9, 0.9, 0.9, 0.9, 0.5, 0.5, 0, 0.9, 0.9, 0.9, 0.9, 0.9, 0.5, 0.5, 1.6],inf),
		\out, 9
)).stop
);