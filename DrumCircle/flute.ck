Flute solo => JCRev rev => dac;
solo => Delay d => d => rev;

0.05 => rev.mix;
0.4::second => d.max => d.delay;
0.4 => d.gain;

BPM tempo;
SCALE scale;

while( true )
{
    tempo.sixteenthNote => dur sixteenth;
	sixteenth => now;
	if(Math.random2(0, 4) > 3) // every quarter has 1/4 chance play the note
	{
		Math.random2(0, scale.scale.cap()-1) => int note;
		Math.mtof(24 + scale.scale[note]) => solo.freq;
		Math.random2f(0.1, 0.4) => solo.noteOn;
	}
	else
	{
		1 => solo.noteOff;
	}
}
