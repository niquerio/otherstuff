%score_options {"parts": 2, "verses": 1, "transposed": false}
scDate = "21-Jan-2020"

\include "./sc_functions.ly"
\include "./sc_layout_instrumental.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Belle Qui Tiens Ma Vie"
scSubtitle = "Shawm Edition"
scComposer = "Thoinot Arbeau"
scArranger = "Arr. Monique Rio"
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""




scGlobal= {
  \key a \dorian
  \time 4/4
  
}




scMinimumSystemSpacing = #20


scMusicOneName = "cantus"
scMusicOneClef = \clef "G_8"

scMusicOne =   \relative c' {  
c2 e4 c e g g2 g4 e d c d e e2 \break
c2 e4 c e g g2 g4 e d c d e e2 \break
e2 g4 g a a gs2 e2 fs8 g a4 a gs4 a2 \break
e2 g4 g a a gs2 e2 fs8 g a4 a gs4 a2 \break
 \bar "|." 
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  a2 a4 e a g c,2 c4 c d e f g c,2
  a'2 a4 e a g c,2 c4 c d e f g c,2
  c' g4 e a d, e2 c d4 d e e a2
  a g4 e a d, e2 c d4 d e e a2
}




  
  
scWordsOneA = \lyricmode {

}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
