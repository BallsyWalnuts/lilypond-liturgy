\version "2.22.2" % Specifies the LilyPond version
\language "english"

\header {
  title = "Hymn Title" % Replace with the actual hymn title
  composer = "Composer Name" % Replace with the composer's name (optional)
  arranger = "Arranger Name" % Replace with the arranger's name (optional)
  meter = "Common Meter" % Replace with the meter (e.g., "8.7.8.7 D")
  poet = "Lyricist Name" % Replace with the lyricist's name (optional)
}

global = {
  \key ef \major % Sets the key signature (e.g., \key d \minor)
  \time 3/4 % Sets the time signature (e.g., \time 3/4)
  \tempo 4 = 120 % Sets the tempo (quarter note = 120 bpm)
}

melody = \relative {
  \global 
  ef'4 ef f g g bf af2 bf4 g2.
  bf4 (c) d ef bf bf g g a bf bf bf\rest
  f2 f4 g2 bf4 af af g g f\fermata
  g g g g ef2 d4 c (d) ef d d\fermata
  d d d d ef2 4 f2 4 g2 bf4 af2 (g4) f2 bf4\rest
  bf2 4 ef,4 f g af (g) f ef ef2\fermata
  2. 2.
} % Define the melody for lyrics association

\score {
  \new ChoirStaff <<
    \new Staff {
      \new Voice = "soprano" { % Give the voice a name for lyric association
        \melody
      }
    }

    \new Lyrics \lyricsto "soprano" { % Associate lyrics with the "soprano" voice
      Cre -- ate in me a clean heart, O God, and re -- new a right spir -- it with -- in me.
      Cast me not a -- way from your pre -- sence, and take not your Ho -- ly Spir -- it from me.
      Re -- store un -- to me the joy of your sal -- va -- tion
      and up -- hold me with your free Spir -- it. Am -- en.
    }

    \new Staff {
      \new Voice {
        \relative { d'4 d d d }
      }
    }
    
  >>
  \layout {
    \context {
      \Score
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
    }
  }
}