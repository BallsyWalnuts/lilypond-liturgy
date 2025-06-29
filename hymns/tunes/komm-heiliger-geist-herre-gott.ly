\version "2.22.2"
\language "english"

global = {
    \key f \major
    \time 2/2
}

soprano = \relative c'' {
    \global
    c1 | d2 (c) | a (c) | g1 | a2 b2 | c1 |
    bf2\rest c | d c | g bf | a g | f1 |
    bf2\rest f | g bf | a4 (bf) c2 | g f4 (e) | c1 |
    bf'2\rest c, | f g | a4 (c2) bf4 | a2 g | a1 |
    a | c2 d | c g | a b | c1 |
    bf2\rest c | d c | g bf | a g | f1 |
    bf2\rest f | g bf | a4 (bf) c2 | g (f4 e) | c1 |
    bf'2\rest c, | f g | a4 (c2) bf4 | a2 g | d (e) | f1 |
    bf2\rest g | a f | d g | a g | f1 | \bar "|."
}

alto = \relative c' {
    \global
    f1 | f | c2 (f) | e1 | f2 d | e1 |
    s2 f | f e | e d | f e | f1 |
    s2 d | e d | d c | c a4 (c) | c1 |
    s2 c | d e | f f | f d | e1 |
    f | f2 f | e e | f d | e1 |
    s2 f | f f | e d | f e | f1 |
    s2 c | e d | d c | c (a4 c) | c1 |
    s2 c | d e | f f | f e | a, (c) | c1 | 
    s2 c | c a | bf d | f e | c1 |
}

tenor = \relative {
    \global
    a1 | bf2 (a) | f (c') | c1 | c2 g | g1 |
    d2\rest a' | bf g | c bf | c c | a1 |
    d,2\rest a' | c g | f f | e f4 (g) | e1 |
    d2\rest e | f bf | c4 (a2) d4 | c2 d | cs1 |
    d | c2 bf | g c | c g | g1 |
    d2\rest a' | bf c | c bf | c c | a1 |
    d,2\rest a' | g g | f f | e (f4 g) | e1 | 
    d2\rest e | f bf | c4 (a2) d4 | c2 c | f, (g) | a1 |
    d,2\rest e | e f | f bf | c c | a1 |
}

bass = \relative {
    \global
}