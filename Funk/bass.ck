Mandolin bass => NRev r => dac;

0.01 => r.mix;
0.01 => bass.stringDamping;
0.01 => bass.stringDetune;
0.07 => bass.bodySize;
0.5 => bass.gain;

BPM tempo;

tempo.sixteenthNote => dur sixteenth;
for(0 => int i; i < 16; i++)
{
    if(i == 10 || i == 12 || i == 14)
    {
        if(i == 10) Math.mtof(33) => bass.freq;
        if(i == 12) Math.mtof(34) => bass.freq;
        if(i == 14) Math.mtof(35) => bass.freq;
        1 => bass.noteOn;   
    }
    sixteenth => now; 
} 

while( true )
{
    for(0 => int i; i < 16; i++)
    {
        if(i == 0 || i == 3 || i == 6 || i == 10 || i == 12 || i == 14)
        {
            if(i == 0) Math.mtof(36) => bass.freq;
            if(i == 3) Math.mtof(45) => bass.freq;
            if(i == 6) Math.mtof(46) => bass.freq;
            
            if(i == 10) Math.mtof(26) => bass.freq;
            if(i == 12) Math.mtof(27) => bass.freq;
            if(i == 14) Math.mtof(28) => bass.freq;
	        1 => bass.noteOn;   
        }
        sixteenth => now; 
    } 
    for(0 => int i; i < 16; i++)
    {
        if(i == 0 || i == 3 || i == 6 || i == 10 || i == 12 || i == 14)
        {
            if(i == 0) Math.mtof(29) => bass.freq;
            if(i == 3) Math.mtof(38) => bass.freq;
            if(i == 6) Math.mtof(39) => bass.freq;
            
            if(i == 10) Math.mtof(33) => bass.freq;
            if(i == 12) Math.mtof(34) => bass.freq;
            if(i == 14) Math.mtof(35) => bass.freq;
            1 => bass.noteOn;   
        }
        sixteenth => now; 
    } 
}	
