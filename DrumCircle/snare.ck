SndBuf snare => dac;
me.dir(-1) + "/audio/snare_01.wav" => snare.read;

BPM tempo; // class in BPM.ck
0.2 => snare.gain;

while(true)
{
	tempo.eighthNote => dur eighth;
	for( 0 => int beat; beat < 8; beat++ )
	{
		0 => snare.pos;
        eighth => now;
	}
}

