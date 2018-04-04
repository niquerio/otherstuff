
\version "2.18.2"
% automatically converted by musicxml2ly from /home/mrio/music/otherstuff/basse_dance/musicxml/Alenchon.xml

\header {
  encodingsoftware = "abc2xml version 33, http://wim.vree.org/svgParse/abc2xml.html"
  encodingdate = "2017-12-10"
  title = Alenchon
}

PartPOneVoiceOne =  \relative a {
  \clef "G_8" \key c \major \time 6/4 a1. | % 2
  c1. | % 3
  d1. | % 4
  a1. | % 5
  f1. | % 6
  e1. | % 7
  d1. | % 8
  d1. | % 9
  f1. | \barNumberCheck #10
  a1. | % 11
  d1. | % 12
  c1. | % 13
  a1. | % 14
  f1. | % 15
  d1. | % 16
  e1. | % 17
  d1. | % 18
  d1. | % 19
  f1. | \barNumberCheck #20
  g1. | % 21
  a1. | % 22
  a1. | % 23
  d1. | % 24
  a1. | % 25
  f1. | % 26
  d1. | % 27
  f1. | % 28
  e1. | % 29
  d1. | \barNumberCheck #30
  d1. | % 31
  d1.
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "1"
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
    >>

  >>
  \layout {}
  \midi {}
}

