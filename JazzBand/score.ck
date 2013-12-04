me.dir() + "/piano.ck" => string pianoPath;
me.dir() + "/bass.ck" => string bassPath;
me.dir() + "/drums.ck" => string drumsPath;
me.dir() + "/flute.ck" => string flutePath;

Machine.add(drumsPath) => int drumID;
Machine.add(bassPath) => int bassID;
4.8::second => now;

Machine.add(flutePath) => int fluteID;
Machine.add(pianoPath) => int pianoID;

25::second => now;
Machine.remove(drumID);
Machine.remove(bassID);
Machine.remove(fluteID);
Machine.remove(pianoID);