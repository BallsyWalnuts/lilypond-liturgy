\version "2.22.2"
\language "english"
\include "../tunes/komm-heiliger-geist-herre-gott.ly"
\include "../lyrics/come-holy-ghost-god-and-lord.ly"

#(set-global-staff-size 18.5)

\header {
    title = \markup {
        \center-column {
            \line { "Come, Holy Ghost, God and Lord" } % Title line
            \small \normal-text \line { "7.8. 8.8. 8.8. 7.9. 8." } % Syllable count line
        }
    }
    composer = \markup {
        \override #'(baseline-skip . 2)
        \right-column {
            \bold "Komm, Heiliger Geist, Herre Gott"
            "Erfurt Enchirdion, 1524"
            "Arr. composite"
        }
    }
    poet = \markup {
        \override #'(baseline-skip . 2)
        \column {
            \italic "Komm, Heiliger Geist, Herre Gott"
            "St. 1, German, 15th c."
            "Sts. 2-3, Martin Luther, 1524"
            "Tr. composite"
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
}