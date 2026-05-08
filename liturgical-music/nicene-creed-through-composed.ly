\version "2.22.2"
\language "english"

#(set-global-staff-size 18) % Default is 20

\paper {
    tagline = ##f
}

melody = \relative c' {
  \clef treble
  \key f \major
  \cadenzaOn
  d4 e f g g2 a2. \bar "|" 
  a4 a a bf c a2 \bar "|" 
  g4 f f a a f e2 \bar "|" 
  d4 e f g g e e f e d d d2. \bar "|" 
  f4 f g2 a bf4 g a2. \bar "|" 
  a4 a a bf c a d d c2. \bar "|" 
  a4 a a f g a d, e f d e e d2. \bar "|" 
  a'4. g a2. a4. g a2. \bar "|" 
  f4. a c bf a2. \bar "|"
  f4 g g2 e4 f2. \bar "|" 
  d4 e f g g d g f e d2 \bar "|" 
  a'4 g f c' bf a2. \bar "|" 
  f4 g a2 f d4 f g e f d2 a'4 a g a a2 \bar "|" 
  d,4 e f g g g g a bf c c a a g f bf2 a \bar "|" 
  f4 g a2 f2. \bar "|" 
  d4 g g e g f d d2 a'4 a a g a f2 \bar "|" 
  g4 a a a g a2 d, e4 f g g c bf a2 \bar "|" 
  a4 g f d f e d d2. \bar "|" 
  a'4 bf c a bf c d d \bar "|"
  d4 c a a a g a f g f e d2. \bar "|" 
  a'4 a f g a g c a2 g4 a a a a f f e2. \bar "|" 
  f4 g g e f2 e d2. \bar "|" 
  a'4 a f g a a a2 \bar "|" 
  g4 a2 a4 bf c c a a2. \bar "|" 
  d,4 e f(g) a bf c a d d c2. \bar "|" 
  a4 a a c bf a g a bf a a f g e f d d d2. \bar "|" 
  f4 g a bf g2 f4 a d d c a bf g g f g a a a a2. \bar "|" 
  f4 f g f g a a2 d,4 f e f d e d2. \bar "|" 
  f4 g a g g a bf c a g g f2 \bar "|" 
  a4 a c a g f e d2. \bar "|" 
  c2 d2. \bar "|." 
}

text = \lyricmode {
  We be -- lieve in one God: 
  The Fa -- ther Al -- migh -- ty,
  Ma -- ker of hea -- ven and earth
  and of all things vi -- si -- ble and in -- vi -- si -- ble.

  And in one Lord Je -- sus Christ,
  the on -- ly be -- got -- ten son of God,
  be -- got -- ten of his Fa -- ther be -- fore all the a -- ges.
  God from God; Light from Light; 
  True God from True God;
  be -- got -- ten, not made:
  be -- ing of one sub -- stance with the Fa -- ther;
  through whom all things were made;
  who for us men, and for our sal -- va -- tion, came down from hea -- ven,
  and was in -- car -- nate by the Ho -- ly Spi -- rit and the vir -- gin Ma -- ry, 
  and was made man;
  was cru -- ci -- fied al -- so for us, un -- der Pon -- tius Pi -- late,
  and suf -- fered, and was bu -- ried; and the third day rose a -- gain,
  in ful -- fil -- ment of the Scrip -- tures;
  and as -- cen -- ded in -- to hea -- ven
  and is seat -- ed at the right hand of the Fa -- ther,
  and shall come a -- gain with glo -- ry to judge the liv -- ing and the dead;
  His king -- dom shall have no end;

  and in the Ho -- ly Spi -- rit:
  the Lord and the gi -- ver of life; 
  who pro -- ceeds from the Fa -- ther and the Son,
  who with the Fa -- ther and the Son to -- geth -- er is wor -- shipped and glo -- ri -- fied;
  who spoke through the pro -- phets;

  and in one ho -- ly, ca -- tho -- lic and a -- pos -- to -- lic church;
  we ac -- know -- ledge one bap -- tism for the re -- mis -- sion of sins;
  and we look for the re -- sur -- rec -- tion of the dead,
  and the life of the age to come. 
  A -- men.
}

\score{
  <<
    \new Voice = "one" {
      \autoBeamOff
      \melody
    }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { 
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
%   \midi { }
}
