\version "2.22.2"
\language "english"
\include "../tunes/o-esca-viatorum.ly"
\include "../lyrics/o-bread-of-life-from-heaven.ly"

\header {
    title = \markup {
        \center-column {
            \line { "O Bread of Life From Heaven" } % Title line
        }
    }
    composer = \markup {
        \override #'(baseline-skip . 2)
        \right-column {
            "Louis Bourgeois, 1549"
        }
    }
    poet = \markup {
        \override #'(baseline-skip . 2)
        \column {
            \bold "O Esca Viatorum"
            "Latin 1661; tr. unknown"
        }
    }
}

\paper {
    tagline = ##f
}


\score {
    \new ChoirStaff <<
        \new Staff = "upper" <<
            \new Voice = "soprano" {
                \voiceOne
                \soprano
            }
            \new Voice = "alto" {
                \voiceTwo
                \alto
            }
        >>

        \new Lyrics \lyricsto "soprano" \verseOne
        \new Lyrics \lyricsto "soprano" \verseTwo
        \new Lyrics \lyricsto "soprano" \verseThree

        \new Staff = "lower" <<
            \clef "bass"
            \new Voice = "tenor" {
                \voiceThree
                \tenor
            }
            \new Voice = "bass" {
                \voiceFour
                \bass
            }
        >>
    >>
    \layout {
        \context {
            \Staff
            \remove "Time_signature_engraver"
        }
    }
}