\version "2.22.2"
\language "english"

global = {
    \key g \major
    \time 4/4  % need to turn off time signature engraver and manually put in bars
}

soprano = \relative c'' {
    \global
    \cadenzaOn
    \override BreathingSign.Y-offset = #3.0
    e,2 e4 e \bar "|" d2 d \bar "|" e4 (g2 fs4) \bar "|" g2 \breathe 
    b \bar "|" b4 d c b \bar "|" a2 g  \breathe
    d \bar "|" e4 g fs e \bar "|" b'1 \bar "||" % add a double bar here
    d2 \bar "|" d4 c b a \bar "|" g2 e  \breathe
    a \bar "|" a4 g fs e \bar "|" g2 d \breathe
    e \bar "|" b'4 b a2 fs \bar "|" e1 \bar "|."
}

alto = \relative c' {
    \global
    \cadenzaOn
    \override BreathingSign.Y-offset = #3.0
    b2 c4. b8 \bar "|" a2 d \bar "|" c4 (b d2) \bar "|" d \breathe
    d \bar "|" g4. fs8 e4 d \bar "|" d2 b \breathe
    d \bar "|" c4 b c e \bar "|" ds1 \bar "||"
    d4 (g) \bar "|" fs4. e8 d4 c \bar "|" b2 c \breathe
    e \bar "|" fs4 e d c \bar "|" d (b) a2 \breathe
    e' \bar "|" ds4 e e2. ds4 \bar "|" b1 \bar "|."
}

tenor = \relative {
    \global
    \cadenzaOn
    \override BreathingSign.Y-offset = #3.0
    g2 g4 g \bar "|" g (fs) g2 \bar "|" g (a) \bar "|" b
    g \bar "|" g4 b g g \bar "|" g (fs) g2 
    b4 (a) \bar "|" g g a a \bar "|" fs1 \bar "||"
    b2 \bar "|" a4 a fs e8 [fs] \bar "|" g2 g 
    c \bar "|" d4 b b g8 [a] \bar "|" b4 (g) fs2
    g4 (a) \bar "|" fs g c2 b \bar "|" g1 \bar "|."    
}

bass = \relative {
    \global
    \cadenzaOn
    \override BreathingSign.Y-offset = #3.0
    e2 c4 c \bar "|" d2 b \bar "|" c4 e d2 \bar "|" g,
    g' \bar "|" e4 b c g \bar "|" d'2 g, 
    g'4 (fs) \bar "|" e e a, c \bar "|" b1 \bar "||"
    g2 \bar "|" d'4 a b c8 [d] \bar "|" e2 c 
    a \bar "|" d4 e b c \bar "|" g2 d'
    c \bar "|" b4 g a2 b \bar "|" e1 \bar "|."   
}