% Program ECEN101_Asgn6_GeraldA_1.m
% Author: Arielle Gerald
% Date: October 16, 2025
% This program plays a simplified version of "All I Want for Christmas Is 
% You" by Mariah Carey using pure sine waves.
% The song is made up of repeated melodic sections and uses
% MATLAB's sound function to play the result.
%
% The purpose of this script is to show how engineers can use computers to
% create music using math.
% It uses sine waves to represent musical notes.
% Each note has a different frequency that makes it sound higher or lower.
% By putting notes together in different orders, I created a melody that 
% closely resembled Mariah Careys song.
% This program uses these notes to build a simple version
% of her song and plays it through the computer's speakers.

% INSTRUCTIONS:
% Type 'ECEN101_Asgn6_GeraldA_1' in the MATLAB Command Window.

% CREDIT:
% Musical note frequencies are based on standard tuning (A4 = 440 Hz).
% "All I want for Christmas is you" - Mariah Carey

% Sampling setup
sf = 8000;                    % Sampling frequency (samples/second)
x = 0:1/sf:0.35;              % Time vector for one note (seconds)
rest = zeros(size(x));        % Silence (used for rests)

% This program creates sine waves for a series of standard
% notes. Each note is set up to be 0.5 seconds long at a
% sample rate of 8000 Hz. The notes are assembled into a
% song that is then played by the computer speaker.
% variables used:
% sf = sampling frequency (samples/sec)
% x = time vector (sec.)
% a, bb, b, c, cs, d, ds, e, f, fs, g, gs, a5 = the amplitude series for 
% the notes used in the song
% c3, f3, g3, a3, d3 = bass boosted notes
% chordC, chordF, chordG, chordAm, chordD = chords for the song
% intro, verse, hook, bridge, finale = the amplitude series for each line 
% of the song
% song = the amplitude series for the entire song. 

% Notes
a  = sin(2*pi*440*x);         % A4 (Hz)
bb = sin(2*pi*466.16*x);      % A#4 / Bb4 (Hz)
b  = sin(2*pi*493.88*x);      % B4 (Hz)
c  = sin(2*pi*523.25*x);      % C5 (Hz)
cs = sin(2*pi*554.37*x);      % C#5 (Hz)
d  = sin(2*pi*587.33*x);      % D5 (Hz)
ds = sin(2*pi*622.25*x);      % D#5 (Hz)
e  = sin(2*pi*659.26*x);      % E5 (Hz)
f  = sin(2*pi*698.46*x);      % F5 (Hz)
fs = sin(2*pi*739.99*x);      % F#5 (Hz)
g  = sin(2*pi*783.99*x);      % G5 (Hz)
gs = sin(2*pi*830.61*x);      % G#5 (Hz)
a5 = sin(2*pi*880*x);         % A5 (Hz)

% Bass boosted notes
c3 = sin(2*pi*(523.25/2)*x);  % C4 (Hz)
f3 = sin(2*pi*(698.46/2)*x);  % F4 (Hz)
g3 = sin(2*pi*(783.99/2)*x);  % G4 (Hz)
a3 = sin(2*pi*(440/2)*x);     % A3 (Hz)
d3 = sin(2*pi*(587.33/2)*x);  % D4 (Hz)

% Chords
chordC  = (c3 + e + g) / 3;   % C major chord
chordF  = (f3 + a + c) / 3;   % F major chord
chordG  = (g3 + b + d) / 3;   % G major chord
chordAm = (a3 + c + e) / 3;   % A minor chord
chordD  = (d3 + fs + a) / 3;  % D major chord

% Song Sections
intro  = [chordC, chordF, chordG, chordC];          % Intro phrase
verse  = [chordC, chordAm, chordF, chordG];         % Verse phrase
hook   = [chordC, chordF, chordG, chordC, chordF];  % Chorus/hook phrase
bridge = [chordAm, chordD, chordG, rest];           % Bridge or break
finale = [chordC, chordF, chordG, chordC];          % Ending phrase

% Assemble song
song = [intro, verse, hook, bridge, hook, finale];  % Concatenate all parts

% Play
song = song / max(abs(song));   % Normalize amplitude to avoid clipping
sound(song, sf);                % Play the song through system speakers
