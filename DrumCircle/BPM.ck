public class BPM
{
	dur myDuration[4];
	static dur quarterNote, eighthNote, sixteenthNote, thirtysecondNote;

	function void tempo(float beat)
	{
		60.0/(beat) => float SPB;
		SPB::second => quarterNote;
		quarterNote * 0.5 => eighthNote;
		eighthNote * 0.5 => sixteenthNote;
		sixteenthNote * 0.5 => thirtysecondNote;
		[quarterNote, eighthNote, sixteenthNote, thirtysecondNote] @=> myDuration;
	}
}
