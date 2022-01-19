\version "2.22.1"

\header {
  title = "Psalm 132"
  tagline = ##f
}

SopranoMusic = \relative {
  bes'1 | g2 bes2 | aes1 \bar "||"
  g1 | f2 aes2 | g2 f2 | ees1 \bar "||"
}

AltoMusic = \relative {
  g'1 | g2 f2 | ees1 \bar "||"
  ees1 | c2 c2 | d2 d2 | ees1 \bar "||"
}

TenorMusic = \relative {
  bes1 | ees2 d2 | c1 \bar "||"
  bes1 | aes2 f2 | bes2 aes2 | g1 \bar "||"
}

BassMusic = \relative {
  ees1 | ees2 ees2 | ees1 \bar "||"
  ees1 | aes,2 aes2 | bes2 bes2 | ees1 \bar "||"
}

global = {
  \time 2/2
  \key ees \major
}

dot = \markup {
  \raise #0.7 \musicglyph "dots.dot"
}

\markup {
  \fill-line {
    \score {
      <<
        \new ChoirStaff <<
          \new Staff <<
            \global
            \clef "treble"
            \new Voice = "Soprano" <<
              \voiceOne
              \SopranoMusic
            >>
            \new Voice = "Alto" <<
              \voiceTwo
              \AltoMusic
            >>
          >>
          \new Staff <<
            \global
            \clef "bass"
            \new Voice = "Tenor" <<
              \voiceOne
              \TenorMusic
            >>
            \new Voice = "Bass" <<
              \voiceTwo
              \BassMusic
            >>
          >>
        >>
      >>
      \layout {
        \context {
          \Score
          \override SpacingSpanner.base-shortest-duration =
          # (ly:make-moment 1/2)
        }
        \context {
          \Staff
          \remove "Time_signature_engraver"
        }
      }
    }
  }
}

\markup {
  \abs-fontsize #8
  \fill-line {
    ""
    \column {
      \left-align {
        \line {"\n"}
        \line { Lord, remember David, and | all his | trouble }
        \line { "    " How he sware unto the Lord, and vowed a vow unto the Al- | -migh-ty | God  of | Jacob: }
        \line {"\n"}
        \line { I will not come within the tabernacle | of mine | house }
        \line { "    " nor | climb up | into \dot my | bed; }
        \line {"\n"}
        \line { I will not suffer mine eyes to sleep, nor mine |  eyelids \dot to | slumber, }
        \line { "    " neither the temples of my | head to | take \dot any | rest }
        \line {"\n"}
        \line { Until I find a place for the temple | of the | Lord; } 
        \line { "    " an habitation for the | Migh-ty | God of | Jacob. }
        \line {"\n"}
        \line { Lo we heard of | same at | Ephrata }
        \line {"    " and | found it | in the | wood. }
        \line {"\n"} 
        \line { We will go into his | tab-er- | -nacle, }
        \line { "    " and fall low on our | knees be- | -fore his | footstool. }
        \line {"\n"}
        \line { Arise, O Lord, into thy | rest-ing | place; }
        \line {"    " thou, and the | \bold ark | of thy | strength. }
        \line {"\n"}
        \line { Let the priests be cloth-ed with | right-eous- | -ness; }
        \line {"    " and let thy | saints sing \dot with | joy-ful- | -ness.}
        \line {"\n"}
        \line { For thy servant | Da-vid's | sake, }
        \line {"    " turn not away the | face of | thine A- | -nointed }
        \line {"\n"}
        \line {The Lord hath made a faithful oath | un-to | David, }
        \line {"    " and He | shall not | shrink from | it: }
        \line {"\n"}
        \line { Of the | fruit of \dot thy | body }
        \line {"    " shall I | set up | on thy | throne. }
        \line {"\n"}
        \line { if thy children will keep my covenant, and my testimonies that | I shall | teach them; }
        \line {"    " their children shall sit upon thy | throne for- | -ev-er- | -more }
        \line {"\n"}
        \line {For the Lord hath chosen Sion to be an habitation | for him- | -self}
        \line {"    " he hath | \bold long- | -ed for | her.}
        \line {"\n"}
        \line {This shall be my | rest for | ever;}
        \line {"    " here will I dwell, for I | have a \dot de- | -light there- | -in}
        \line {"\n"}
        \line {I will bless her | victuals \dot with | increase}
        \line {"    " and will satis- | -fy her | poor with | bread.}
        \line {"\n"}
        \line {I will deck her | priests with | health, }
        \line {"    " and her | saints shall \dot re- | -joice and | sing.}
        \line {"\n"}
        \line {There shall I mae the horn of | David \dot to | flourish;}
        \line {"    " I have ordain-ed a | lantern \dot for | mine A- | -nointed}
        \line {"\n"}
        \line {As for his enemies, I shall | clothe them \dot with | shame; }
        \line {"    "but upon himself | shall his | \bold crown | flourish.}
        \line {"\n"}
        \line {Glory be to the Father and | to the | Son }
        \line {"    " and | to the | Ho-ly | Ghost.}
        \line {"\n"}
        \line {As it was in the beginning, is now and | ev-er | shall be}
        \line {"    "world | with-out | end. A- | -men.}
      }
    }
    ""
  }
}