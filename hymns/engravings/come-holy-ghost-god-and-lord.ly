\version "2.22.2"
\language "english"
\include "../tunes/komm-heiliger-geist-herre-gott.ly"

\header {
    title = "Come, Holy Ghost, God and Lord"
    subtitle = "7.8. 8.8. 8.8. 7.9. 8."
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