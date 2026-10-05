# MATLAB Music Generator: "All I Want for Christmas Is You"

A MATLAB program that generates a simplified sine wave audio arrangement of Mariah Carey's *"All I Want for Christmas Is You"* through frequency modeling, chord synthesis, and digital audio playout.

---

## Overview

This project demonstrates how mathematical formulas and signal processing principles can be used to synthesize musical notes, chords, and full song structures on a computer. 

By modeling standard musical note frequencies using pure sine waves, the script constructs individual notes, combines them into chords, and sequences them into identifiable song sections.

---

## Features

- **Pure Sine Wave Synthesis**: Models standard equal-tempered musical note frequencies.
- **Lower Octave Bass Support**: Synthesizes lower octave frequencies to enrich chord harmonies.
- **Chord Generation**: Synthesizes multi-note major and minor chords by averaging individual wave amplitudes.
- **Section Sequencing**: Assembles distinct song components (`intro`, `verse`, `hook`, `bridge`, `finale`) into a full song structure.
- **Audio Normalization**: Scales peak amplitude to prevent digital audio clipping prior to playback.

---

## Usage Instructions

1. Open MATLAB and set your current directory to the folder containing the file `ECEN101_Asgn6_GeraldA_1.m`.
2. In the MATLAB Command Window, run the script by typing:

   ```matlab
   ECEN101_Asgn6_GeraldA_1
