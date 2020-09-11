\header {
  title = "Memorare"
  composer = "Composer"
}

\language "english"
melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 100

  r2 f4 f | c4.( a'8) a2~ | a4 r2 f4 | c'8 bf f2 d4 | df2. f4  | g8( a) a2. | 
  r2. f4 | c'8 bf f2 d4 | df2. f4 | g8 a a2. | r1 |
  c4 bf r4. c8 | bf df4 c8 bf4 c | f,4. a8 a2~ | a r | 
  bf4 a g f | e d4. r8 e4 | f4. e8 c2~ | c r |
  bf'4 a g f | d~ d4. r8 e4 | f4. e8 c2~ | c r |
  f4 g a bf | c df2.( | c2) r2 |
  r a4 a | g4.( a8) a2~ | a r2 \bar "|."
}

text = \lyricmode {
  Me -- mo -- ra -- re, O pii -- ssi -- ma Vir -- go Ma -- ri -- a, 
  non es -- se au -- di -- tum a sae -- cu -- lo, 
  quem -- quam ad tua cu -- rren -- tem prae -- si -- di -- a, 
  tu -- a im -- plor -- an -- tem aux -- i -- li -- a, 
  tu -- a pe -- ten -- tem su -- ffra -- gi -- a, 
  es -- se de -- re -- lict -- um.
  Me -- mo -- ra -- re
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  f,,8 c' f c f, c' f c | f, c' f c f, c' f c | f,8 c' f c f, c' f c  | f,8 d' f d f, d' f d  | f,8 df' f df f, df' f df 
  f, c' f c f, c' f c | f,8 c' f c f, c' f c  | f,8 d' f d f, d' f d  | f,8 df' f df f, df' f df 
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  f
}

\score {
  <<
    \new Voice = "mel" \melody
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}