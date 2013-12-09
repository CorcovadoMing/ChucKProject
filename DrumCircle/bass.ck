Mandolin bass => NRev r => dac;

0.01 => r.mix;
0.01 => bass.stringDamping;
0.01 => bass.stringDetune;
0.03 => bass.bodySize;
0.7 => bass.gain;
4 => int walkPos;

BPM tempo;
SCALE scale;

while( true )
{
    tempo.quarterNote => dur quarter;
    
    // just like example, but I decrease an octave
	Math.random2(-2, 2) +=> walkPos;
	if( walkPos < 0 ) 1 => walkPos;
	if( walkPos >= scale.scale.cap() ) scale.scale.cap() -1 => walkPos;
	Std.mtof(scale.scale[walkPos] - 24) => bass.freq;
	Math.random2f(0.05, 0.5) => bass.pluckPos;
    1 => bass.noteOn;
    quarter => now;
}	
