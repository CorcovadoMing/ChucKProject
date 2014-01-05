function void sitar( float freq, float duration)
{
    Sitar sitar => Gain sitar_gain => dac;
    sitar_gain => Gain sitar_feedback => Delay delay => sitar_gain;
    
    0.5::second => delay.max;
    0.1::second => delay.delay;
    0.75 => sitar_gain.gain;
    
    freq => sitar.freq;
    
    1 => sitar.noteOn;
    duration::second => now;
}

sitar(880, 1);
sitar(440, 0.5);
sitar(660, 0.5);
sitar(880, 1);