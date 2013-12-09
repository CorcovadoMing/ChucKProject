SndBuf hihat => dac;
me.dir(-1) + "/audio/hihat_01.wav" => hihat.read;

BPM tempo; // class in BPM.ck

while(true)
{
	tempo.sixteenthNote => dur sixteenth;
	for( 0 => int beat; beat < 16; beat++ )
	{
		if(Math.random2(0, 5) > 4) // 1/5 chance kick
        { 
            Math.random2f(0.1, 0.2) => hihat.gain;
			0 => hihat.pos;
		}
        sixteenth => now;
	}
}

