%score_options {"parts": 2, "verses": 1, "transposed": false}
scDate = "21-Jan-2020"

\include "./sc_functions.ly"
\include "./sc_layout_instrumental.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Ductia"
scSubtitle = "Shawm Edition"
scComposer = "Anonymous"
scArranger = "13th C. BL Harley 978"
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""




scGlobal= {
  \key e \dorian
  \time 6/8
  
}




scMinimumSystemSpacing = #20


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c'' {  
   e4 fs8 g8 fs e d4. d4 b8 cs4 a8 b4 cs8 d4. r4.
 e4 cs8 d4 e8 d4. b4 g8 a8 b cs d e cs d4. r4. \break
 b4 cs8 d4 e8 fs4 e8 cs4 d8 b4 cs8 d e d e4. r4. 
 d4 cs8 b4 a8 cs4. cs4 d8 b4. b4 cs8 d4. r4.
 e4 e8 d cs b d4. d4 fs8 e4 e8 d cs b a4. r4. 
 e'4 e8 d cs b d4. d4 fs8 e4 e8 d cs b a4. r
 d4 cs8 d4 e8 cs4. cs4 a8 b4 cs8 d4 cs8 b4. r4. 
 d4 cs8 d4 e8 cs4. cs4 a8 b4. cs4 b8 a4. r4.
 \bar "|." 
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8
"

scMusicTwo =   \relative c' {  
  a4 a8 g8 fs e g4. g4 b8 a4 a8 g8 fs e d4. r4.
  a'4 a8 g8 fs e g4. g4 b8 a4 a8 g8 fs e d4. r4. 
  g4 fs8 g4 a8 fs4. fs4 d8 e4 fs8 g4 fs8 e4. r4. 
  g4 fs8 g4 a8 fs4. fs4 d8 e4. fs4 e8 d4. r4.
  a'4. b4. g g4 fs8 a4. g a r e g d g4 fs8 a4. g a r
  g4 a8 g4 e8 fs4. fs4 g8 e4 fs8 d4 fs8 e4. r4. 
  g4 a8 g4 e8 fs4. fs4 g8 e4. fs4 g8 a4. r4.
}




  
  
scWordsOneA = \lyricmode {

}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
