function void mandolin(float freq, float duration)
{
    Mandolin mand => dac;
    0.5 => mand.pluckPos;
    1.0 => mand.noteOn;
    0.02 => mand.stringDetune;
    0.25 => mand.bodySize;
    freq => mand.freq;
    0.8 => mand.gain;
    duration::second => now;
}

mandolin(880, 1);
mandolin(440, 0.5);
mandolin(660, 0.5);
mandolin(880, 1);
