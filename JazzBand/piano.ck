Rhodey piano[4];
piano[0] => dac.left;
piano[1] => dac;
piano[2] => dac;
piano[3] => dac.right;

[ [56,50,63,67], [54,58,63,66] ] @=> int chord[][];

while( true )
{   
    // only note on second and forth quarter
     
    0.3::second => now;	
	for( 0 => int i; i < 4; i++ )
	{
		1 => piano[i].noteOff;
	}
    
    0.3::second => now;	
    if(Math.random2(0, 4) > 3)
    {
    	for( 0 => int i; i < 4; i++ )
    	{
    		Std.mtof(chord[0][i]) => piano[i].freq;
    		Math.random2f(0.2, 0.4) => piano[i].noteOn;
    	}
    }
    else
    {
    	for( 0 => int i; i < 4; i++ )
    	{
    		1 => piano[i].noteOff;
    	}
    }
    
    0.3::second => now;	
	for( 0 => int i; i < 4; i++ )
	{
		1 => piano[i].noteOff;
	}
    
    0.3::second => now;	
    if(Math.random2(0, 4) > 3)
    {
    	for( 0 => int i; i < 4; i++ )
        {
            Std.mtof(chord[1][i]) => piano[i].freq;
            Math.random2f(0.4, 0.8) => piano[i].noteOn;
        }
    }
    else
    {
    	for( 0 => int i; i < 4; i++ )
    	{
    		1 => piano[i].noteOff;
    	}
    }
}
