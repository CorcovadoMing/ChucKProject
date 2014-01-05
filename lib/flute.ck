function void flute( float freq, float note_on, float note_off ) 
{
    Flute flute => dac;
    freq => flute.freq;
    
    1 => flute.noteOn;
    note_on::second => now;
    1 => flute.noteOff;
    note_off::second => now;
}

flute(880, 0.5, 0.5 );
flute(440, 0.25, 0.25 );
flute(660, 0.25, 0.25 );
flute(880, 0.5, 0.25 );