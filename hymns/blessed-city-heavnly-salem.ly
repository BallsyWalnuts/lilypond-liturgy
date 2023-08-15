\version "2.22.1"
\language "english"

\header {
  title = "Blessed City, Heav'nly Salem"
  composer = "Sarum Plainsong, Mode II"
  poet = "URBS BEATA"
}

<<
  <<
    % vocal line
    \new Staff \with { \remove "Time_signature_engraver" } \relative {
      \autoBeamOff 
      \clef treble 
      \key ef \major 
      \cadenzaOn
      c''8 c c( bf) af bf c c f,4 \bar "'"
      af8 bf d af f ef f4 \bar "|"
      af8 f g af bf c bf[( af g]) f4 \bar "'"
      g8 af g f g f ef 4 \bar "|"
      c8 ef[( f]) f f[( ef]) af bf bf af4 \bar "'"
      c8 bf af[( g]) af[( bf]) af[( g f) ef] f4 \bar "|."
    }
    \addlyrics {
      \set stanza = "1. "
      Bless -- ed ci -- ty heav'n -- ly Sa -- lem, 
      Vi -- sion dear of peace and love,
      Who of li -- ving stones are build -- ed
      In the height of heav'n a -- bove,
      And, with an -- gel hosts en -- cir -- cled,
      As a bride dost earth -- ward move;
    }
  >>
  % piano part
  \new PianoStaff <<
    % treble clef
    \new Staff  \with { \remove "Time_signature_engraver" } \relative { 
      \clef treble 
      \key ef \major 
      \cadenzaOn
      <ef' c'>4 
    }
    % bass clef
    \new Staff \with { \remove "Time_signature_engraver" } \relative { 
      \clef bass 
      \key ef \major 
      \cadenzaOn
      <c g'>4
    }
  >>
>>