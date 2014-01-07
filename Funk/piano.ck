Rhodey right[4];
right[0] => dac.right;
right[1] => dac.right;
right[2] => dac.right;
right[3] => dac.right;

Rhodey left[4];
left[0] => dac.left;
left[1] => dac.left;
left[2] => dac.left;
left[3] => dac.left;

BPM tempo;

tempo.sixteenthNote => dur sixteenth;

function void rightStop()
{
    for( 0 => int i; i < 4; i++ )
    {
        1 => right[i].noteOff;
    }
}

function void leftStop()
{
    for( 0 => int i; i < 4; i++ )
    {
        1 => left[i].noteOff;
    }
}

for(0 => int i; i < 16; i++)
{
    sixteenth => now; 
} 

while( true )
{
    for(0 => int i; i < 16; i++)
    {
        rightStop();leftStop();
        sixteenth => now; 
    } 
    for(0 => int i; i < 16; i++)
    {
        if(i == 0 || i == 10 || i == 12 || i == 13)
        {
        if(i == 0){rightStop();leftStop();}
        if(i == 10)
        {
            Math.mtof(56) => right[0].freq;
            1 => right[0].noteOn;
            Math.mtof(62) => right[1].freq;
            1 => right[1].noteOn;
            Math.mtof(67) => right[2].freq;
            1 => right[2].noteOn;
            
            Math.mtof(58) => left[0].freq;
            1 => left[0].noteOn;
            Math.mtof(46) => right[1].freq;
            1 => left[1].noteOn;            
        }
        if(i == 12){rightStop();leftStop();}
        if(i == 13)
        {
            Math.mtof(57) => right[0].freq;
            1 => right[0].noteOn;
            Math.mtof(63) => right[1].freq;
            1 => right[1].noteOn;
            Math.mtof(67) => right[2].freq;
            1 => right[2].noteOn;
            
            Math.mtof(59) => left[0].freq;
            1 => left[0].noteOn;
            Math.mtof(47) => right[1].freq;
            1 => left[1].noteOn;    
        }    
        }
        sixteenth => now; 
    } 
}	
