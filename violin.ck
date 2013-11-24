function void violin(float freq, float keyon, float keyoff)
{
    SinOsc vib => SawOsc violin => ADSR env => dac;
    (0.5::second, 0.1::second, 0.6, 0.5::second) => env.set;
    freq => violin.freq;
    0.5 => violin.gain;
    6.0 => vib.freq;
    2 => violin.sync;
    3.0 => vib.gain;
    
    1 => env.keyOn;
    keyon::second => now;
    1 => env.keyOff;
    keyoff::second => now;
}

violin(880, 2, 0.1);
violin(440, 1, 0.1);
violin(660, 1, 0.1);
violin(880, 2, 1);