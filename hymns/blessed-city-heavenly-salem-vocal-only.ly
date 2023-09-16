\version "2.22.1"
\language "english"

\header {
  title = "Blessed City, Heav'nly Salem"
  composer = "Sarum Plainsong, Mode II"
  poet = "URBS BEATA"
  tagline = ""
}

melody = \relative {
  \clef treble 
  \key ef \major 
  \cadenzaOn
  c''8 c c( bf) af bf c c f,4 \bar "'"
  af8 bf g af f ef f4 \bar "|"
  af8 f g af bf c bf[( af g]) f4 \bar "'"
  g8 af g f g f ef 4 \bar "|"
  c8 ef[( f]) f f[( ef]) af bf bf af4 \bar "'"
  c8 bf af[( g]) af[( bf]) af[( g f)] ef f4 \bar "|."
  f8[ g f] ef4( f) \bar "|."
}

verse_one = \lyricmode {
  \set stanza = "1. "
    Bless -- ed ci -- ty heav'n -- ly Sa -- lem, 
    Vi -- sion dear of peace and love,
    Who of li -- ving stones are build -- ed
    In the height of heav'n a -- bove,
    And, with an -- gel hosts en -- cir -- cled,
    As a bride dost earth -- ward move;
}

verse_two = \lyricmode {
  \set stanza = "2. "
  From ce -- les -- tial realms de -- scend -- ing,
  Bri -- dal glo -- ry round thee shed,
  Meet for him whose love es -- poused thee,
  To thy Lord shalt thou be led;
  All thy streets and all thy bul -- warks
  Of pure gold are fash -- ion -- ed.
} 

verse_three = \lyricmode {
  \set stanza = "3. "
  Bright thy gates of pearl are shin -- ing;
  They are o -- pen ev -- er -- more;
  And by vir -- tue of his mer -- its
  Thith -- er faith -- ful souls do soar,
  Who, for Christ's dear Name, in this world
  Pain and tirb -- u -- la -- tion bore.
}

verse_four = \lyricmode {
  \set stanza = "4. "
  Ma -- ny~a blow and bi -- ting sculp -- ture
  Pol -- ished well those stones e -- lect,
  In their pla -- ces now com -- pact -- ed
  By the heav'n -- ly Ar -- chi -- tect,
  Who there with hath willed for ev -- ver
  That his pal -- ace should be decked.
}

verse_five = \lyricmode {
  \set stanza = "5. "
  Laud and ho -- nor to the Fa -- ther,
  Laud and ho -- nor to the Son,
  Laud and ho -- nor to the Spi -- rit,
  Ev -- er Three, and ev -- er One,
  Con -- sub -- stan -- tial, co -- e -- ter -- nal,
  While un -- end -- ing a -- ges run.
  A -- men.
}

\score {
    <<
        \new Voice  = "mel"  \with { \remove "Time_signature_engraver" }{ \autoBeamOff \melody }
        \new Lyrics \lyricsto mel \verse_one
        \new Lyrics \lyricsto mel \verse_two
        \new Lyrics \lyricsto mel \verse_three
        \new Lyrics \lyricsto mel \verse_four
        \new Lyrics \lyricsto mel \verse_five
    >>
}