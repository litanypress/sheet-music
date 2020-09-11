 	
global= {
  \time 4/4
  \key d \major
}

violinOne = \new Voice \relative c'' {
  a1 | d2 cis | fis g | a1
  a,1 | d2 cis | fis g | a1
}

violinTwo = \new Voice \relative c'' {
  fis,4 e fis g | a2. b8 cis | d4 cis b g | a1
  fis4 e fis g | a2. b8 cis | d4 cis b g | a1

}

viola = \new Voice \relative c' {
  \clef alto
  d4 e d b | e1 | b4 a e'2 | d cis
  d8 a e a d e b d | e1 | b8 cis a d e2 | d cis
}

cello = \new Voice \relative c' {
  \clef bass
  d,2. g,4 | a1 | b4 fis' e d | a1 
  d2. g,4 | a1 | b4 fis' e d | a1 
}

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \violinOne >>
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \violinTwo >>
    \new Staff \with { instrumentName = "Viola" }
    << \global \viola >>
    \new Staff \with { instrumentName = "Cello" }
    << \global \cello >>
  >>
  \layout { }
  \midi { }
}