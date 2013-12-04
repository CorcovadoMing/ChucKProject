Flute solo => JCRev rev => dac;
solo => Delay d => d => rev;

0.05 => rev.mix;
0.4::second => d.max => d.delay;
0.4 => d.gain;

[46, 48, 49, 51, 53, 54, 56, 58] @=> int scale[];

while( true )
{   
	0.3::second => now;
    
	if(Math.random2(0, 3) > 1)
	{
		Math.random2(0, scale.cap()-1) => int note;
		Math.mtof(24 + scale[note]) => solo.freq;
		Math.random2f(0.1, 0.4) => solo.noteOn;
	}
	else
	{
		1 => solo.noteOff;
	}
}
