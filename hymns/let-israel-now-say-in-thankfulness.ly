\version "2.22.1"
\language "english"

\header {
  title = "Let Israel Now Say in Thankfulness (Psalm 124)"
  composer = "Claude Goudimel"
  poet = "Theodore Beza (Tr. Unknown)"
}

vocal_lines = \lyricmode {
    Let Is -- ra -- el now say in thank -- ful -- ness 
    That if the LORD had not our right main -- tained 
    and if the LORD had not with us re -- mained, 
    When cru -- el men a -- gainst us rose to strive, 
    We'd sure -- ly have been swal -- lowed up a -- live.
    Yea, when their wrath a -- gainst us fierce -- ly rose, 
    Then would the tide o'er us have spread its wave; 
    The ra -- ging stream would have be -- come our grave;
    The surg -- ing flood, in proud -- ly swel -- ling roll,
    Most sure -- ly would have o -- ver -- whelmed us all. 
    Blest be the LORD who made us not their prey;
    As from the fow -- ler's net a bird may flee,
    So from their bro -- ken snare did we go free.
    Our on -- ly help is in God's ho -- ly Name;
    He made the earth and all the heav'n -- ly frame.
}

soprano = \relative {
    \clef treble
    \key f \major
    \time 2/2
    f'2 g4 a bf2 a g4 f f e f2 r
    a2 bf4 c d2 c bf4 a g2 f e2 r
    c2 f4 f e2 f g4 bf4~4 a2 g4 a2 r
    c2 c4 bf a2 g a4 c c b c2 r
    a2 g4 f e2 f g4 bf a2 g f \bar "."
    f2 g4 a bf2 a g4 f f e f2 r2
    a bf4 c d2 c bf4 a g2 f e r2
    c f4 f e2 f g4 bf~4 a2 g4 a2 r2
    c c4 bf a2 g a4 c c b c2 r
    a g4 f e2 f g4 bf a2 g f \bar "."
    f2 g4 a bf2 a g4 f f e f2 r2
    a bf4 c d2 c bf4 a g2 f e r2
    c f4 f e2 f g4 bf~4 a2 g4 a2 r2
    c c4 bf a2 g a4 c c b c2 r
    a g4 f e2 f g4 bf a2 g f \bar "."

}

alto = \relative {
    \clef treble
    \key f \major
    \time 2/2
    f'2 g4 a bf2 a g4 f f e f2 r
    f2 f4 f f2 f d8[( e)] f4 d2 d c r
    c c4 c c2 c
}

\score {
    \new StaffGroup <<
        \new Voice = "sop" { \soprano }
        \new Lyrics \lyricsto sop \vocal_lines
        \new Voice = "alto" { \alto }
        \new Lyrics \lyricsto alto \vocal_lines
    >>
}