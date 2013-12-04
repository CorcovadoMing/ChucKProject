SndBuf hihat => dac;
SndBuf hihat2 => dac;
SndBuf snare => dac;

me.dir(-1) + "/audio/snare_01.wav" => snare.read;
me.dir(-1) + "/audio/hihat_01.wav" => hihat.read;
me.dir(-1) + "/audio/hihat_02.wav" => hihat2.read;

0.6 => hihat2.gain;
0.9 => snare.gain;

while( true )
{
	Math.random2f(0.1, 0.3) => hihat.gain;
	Math.random2f(0.9, 1.2) => hihat.rate;

    0.6::second => now;
	0 => hihat.pos;
    0 => hihat2.pos;
    
    0.45::second => now;
    0 => hihat.pos;
    
    0.15::second => now;
    0 => snare.pos;
    0 => hihat.pos;
    0 => hihat2.pos;
}
