\paper {
  print-page-number = ##f
  print-first-page-number = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t

}
chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}


% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

ppMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
ppMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
ppMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
ppMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
ppMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
ppMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
ppMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
ppMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
ppMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
ppMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
ppMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
ppMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

arbeauSource = \markup { Thoinot Arbeau, \italic {Orchésographie,} 1589 }
playfordSource = \markup { John Playford, \italic {The English Dancing Master,} 1651 }
negriSource = \markup { Cesare Negri, \italic {Le Grazie d'Amore,} 1602 }
carosoSourceBalarino = \markup { Fabritio Caroso, \italic {Il Ballarino,} 1581 }
carosoSourceNobilta = \markup { Fabritio Caroso, \italic {Nobiltà di Dame,} 1600 }
pnaSource = \markup { Guglielmo Ebreo da Pesaro, c. 1475 (PnA) }
pndSource = \markup { Domenico da Piacenza, c. 1425-1450 (PnD) }
pngSource = \markup { Guglielmo Ebreo da Pesaro, 1463 (PnG) }
brusselsSource = \markup { Brussels MS 9085, 15th C. }
praetoriusSource = \markup { Michael Praetorius, \italic Terpsichore, 1612 }
ravenscroftSource = \markup { Thomas Ravenscroft, \italic Deuteromelia, 1609 }
susatoSource = \markup { Tylman Susato, \italic Danserye, 1551 }
gresleySource = \markup { Gresley Manuscript, c. 1500 }
byrdSource = \markup { William Byrd (c. 1540 - 1623) }

monicaCopyright = "© Monica Cellio, SCA She'erah bat Shlomo"
monicaTagline = "Permission granted for use with attribution (CC BY 4.0)."

hendricksCopyright = "© Steven Hendricks, SCA Samuel Piper"
hendricksTagline = "Permission granted to copy within the SCA."

octavioCopyright = "© Jay Ter Louw, SCA Octavio de Flores"
octavioTagline =  "May be freely used and distributed within the SCA with this notice."

alaricCopyright = "© Robert Smith, SCA Alaric MacConnal"
alaricTagline = "Permission granted to distribute within the SCA without alterations."

vanstoneCopyright = "© Kathy Van Stone, SCA Elsbeth Anne Roth"
vanstoneTagline = "Permission granted to distribute within the SCA without alterations."

aaronCopyright = "© Aaron Elkiss, SCA Aaron Drummond"
aaronTagline = "Permission granted for use with attribution. (CC BY 4.0)"

robyyanCopyright = "© Dennis R. Sherman, SCA Robyyan Torr d'Elandris"
robyyanTagline = "Permission granted for non-commercial use with attribution. (CC BY-NC-SA 3.0)"

arslanCopyright = "© David Svoboda, SCA Arslan ibn Da'ud"
arslanTagline= "Permission granted for use with attribution (CC BY 3.0)"

jadwigaCopyright = "© Monique Rio, SCA Jadwiga Krzyzanowska"
jadwigaTagline = "Permission granted for use with attribution (CC BY 4.0)"

yardleyCopyright = "© David Yardley, SCA Geoffrey of Exeter"
yardleyTagline = "Free for non-profit use."

katrinaCopyright = "© Katrina Hunt, SCA Mathilde Adycote"
katrinaTagline = "May be freely copied for use within the SCA"

butlerCopyright = "© Paul Butler, SCA Arden of Icombe"
butlerTagline = "Permission granted to use this work for any purpose with attribution."

stocktonCopyright = "© Robert Stockton, SCA Robin the Just"
stocktonTagline = "Permission granted to distribute and perform within the SCA with this notice on all copies."

% Source: http://pavao.org/music/
pavaoCopyright = "© Aaron Pavao, SCA John Chandler"
pavaoTagline = "Permission granted to photocopy for use during creative anachronism."

casazzaCopyright = "© Joseph Casazza"
casazzaTagline = "Permission granted for non-commercial use with attribution. (CC BY-NC 3.0)"

almondCopyright = "© Russell G. Almond, SCA Mustapha al-Muhaddith"
almondTagline = "Permission granted to use and copy this work with attribution"

avatarCopyright = "© Al Cofrin, SCA Avatar"
avatarTagline = "Freely distributable within the SCA."

dafyddCopyright = "© Dave Lankford, SCA Dafydd Arth"
dafyddTagline = "Permission granted for use with attribution (CC BY 3.0)."

gaitaCopyright = "© Gaïta / Chris Elmes"
gaitaTagline = "Permission granted for not-for-profit use in the SCA."

emmaCopyright = "© Emma Badowski, SCA Margaret Raynsford"
emmaTagline = "Permission granted for non-commercial use with attribution. (CC BY-NC-SA 3.0)"

martinCopyright = "© Richard Schweitzer, SCA Martin Bildner"
martinTagline = "Permission granted for non-commercial use with attribution. (CC BY-NC-SA 3.0)"
