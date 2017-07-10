%score_options {"parts": 1, "verses": 5, "transposed": false}
scDate = "DATE"

\include "sc_functions.ly"
\include "sc_layout_vocal.ly"

scStaffSize = 20
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Fight for Cynnabar"
scSubtitle = \markup { \italic "To the Tune of Nonesuch" }
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key a \minor
  \time 4/4
  \autoBeamOff
}




scMinimumSystemSpacing = #28
scMinTopSystemSpacing = #20
scChords = \chordmode {
  \set chordNameExceptions = #chExceptions
  a4:^3 a1:^3 a:^3 a:^3 a:^3 a:^3 a:^3 a:^3 a:^3
  g:^3 a:^3 g:^3 a:^3 g:^3 a:^3 g:^3 a2.:^3
  
}

scMusicOneName = "cantus"
scMusicOneClef = \clef "G_8"

scMusicOne =   \relative c' {  
 \partial 4 e4 | e c d e | c b8[ c] a4 e'4 | e c d e | c2 a4 
 e'4 | e c d e | c b8[ c] a4 e'4 | e c d e | c2 a4 \bar "||" \break 
 c4 b g a b c b a4 c b g a b c2 a4 \bar "" \break
 \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 88))
  c4 b g a b c b a4 c b g a b a2.
 \bar "|."
}




  
  
scWordsOneA = \lyricmode {
\set stanza =  "1."
Red Black and White our co -- lors fly 
so proud u -- pon our to -- wer.
They show to all who fight with us
our cour -- age and our va -- lor

Go forth and fight for Cyn -- na -- bar
be -- neath the dra -- gon's wing. __ _
Go forth and fight for Cyn -- na -- bar
for Ba -- ron and for King. 
}
    
  
scWordsOneB = \lyricmode {
\set stanza =  "2."
Our migh -- ty, gi -- ant el -- e -- phant 
strikes ter -- ror in our foes. __ _
Im -- pa -- ling knaves u -- pon his tusks,
their meat shall feed the crows __ _
}
    
  
scWordsOneC = \lyricmode {
\set stanza =  "3."
Our sweet saint Cyn -- na -- bar -- i -- us
does bless our shi -- ning steel. __ _
His re -- lics we shall bear on high
to force our foes to kneel __ _

}
    
  
scWordsOneD = \lyricmode {
\set stanza =  "4."
Our for -- tress shall pro -- tect the land,
no rogue nor cur ad -- mit. __ _
Our Ba -- ro -- ny is great and true,
It ne -- ver will sub -- mit __ _
}
    
  
scWordsOneE = \lyricmode {
\set stanza =  "5."
The Dra -- gon's blood
runs through our veins
As hot as a -- ny fire. __ _
The tide of blood left in our wake
is ri -- sing e -- ver high -- er
}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
