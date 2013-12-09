BPM tempo;
tempo.tempo(120);
SCALE scale;
scale.init();

Machine.add(me.dir()+"/snare.ck") => int snareID;
Machine.add(me.dir()+"/bass.ck") => int bassID;
Machine.add(me.dir()+"/cow.ck") => int cowID;

8.0 * tempo.quarterNote => now;
Machine.add(me.dir()+"/hihat.ck") => int hihatID;
Machine.add(me.dir()+"/kick.ck") => int kickID;

8.0 * tempo.quarterNote => now;
Machine.add(me.dir()+"/flute.ck") => int fluteID;

80 * tempo.quarterNote => now;
Machine.remove(fluteID);

8.0 * tempo.quarterNote => now;
Machine.remove(bassID);
Machine.remove(cowID);

8.0 * tempo.quarterNote => now;
Machine.remove(snareID);
Machine.remove(hihatID);
Machine.remove(kickID);

