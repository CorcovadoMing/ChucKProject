SndBuf bg => dac;

me.dir(0) + "/playback.wav" => bg.read;

while( true )
{
    2.15::second => now;
    0 => bg.pos;
}