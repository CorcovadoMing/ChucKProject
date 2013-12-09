SndBuf cow => dac;
me.dir(-1) + "/audio/cowbell_01.wav" => cow.read;

BPM tempo;
0.5 => cow.gain;

while(true)
{
	tempo.eighthNote => dur eighth;
	for( 0 => int beat; beat < 8; beat++ )
	{
		if( beat == 2 || beat == 6 )
		{
			0 => cow.pos;
		}
		eighth => now;
	}
}
