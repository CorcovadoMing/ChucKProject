function void clarinet( float freq, float note_on, float note_off)
{
    Clarinet clar => dac;
    0.6 => clar.gain;
    freq => clar.freq;
    
    1 => clar.noteOn;
    note_on::second => now;
    1 => clar.noteOff;
    note_off::second => now;
}

clarinet(880, 1, 0.01);
clarinet(440, 0.5, 0.01);
clarinet(660, 0.5, 0.01);
clarinet(880, 1, 0.01);