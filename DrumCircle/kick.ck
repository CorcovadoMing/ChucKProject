SndBuf kick => dac;
me.dir(-1) + "/audio/kick_04.wav" => kick.read;

BPM tempo; // class in BPM.ck

while(true)
{
	tempo.eighthNote => dur eighth;
	for(0 => int beat; beat < 8; beat++)
	{
        if(Math.random2(0, 3) > 2) // 1/3 chance kick
        {
		    0 => kick.pos;
        }
		eighth => now;
	}
}

