AUTHORS = "Eric Seals"

\version "2.24.1"  % make sure this matches the version you installed

%\language "english"
\header {
  title = "An October Waltz"
  composer = "Eric Seals"
  tagline = #f
}

% First section, bars 1-7.
part-one = {
  \key g \minor
  \time 3/4 
  \tempo 4 = 88
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } {
      \relative c' {
        \part-one
        d'2. 
        r8 c bes a bes g
        bes c g2 
        ~ g2.
        c2. 
        r8 g bes a g a
        bes c g2 
        ~ g2.
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass \relative c {
        \part-one
        g'8 <bes d> <bes d> g <bes d> <bes d>
        g <bes d> <bes d> g <bes d> <bes d>
        ees, <g c> <g c> ees <g c> <g c>
        ees <g c> <g c> ees <g c> <g c>
        d <fis c'> <fis c'> d <fis c'> <fis c'>
        d <fis c'> <fis c'> d <fis c'> <fis c'>
        d <g bes> <g bes> d <g bes> <g bes>
        d <g bes> <g bes> d <g bes> <g bes>

        d <g bes> <g bes> d <g bes> <g bes>
        d <g bes> <g bes> d <g bes> <g bes>
        ees <g d> <g d> ees <g d> <g d>
        ees <g d> <g d> ees <g d> <g d>
        d <fis bes> <fis bes> d <fis bes> <fis bes>
        d <fis bes> <fis bes> d <fis bes> <fis bes>
        d <g bes> <g bes> d <g bes> <g bes>
        d <g bes> <g bes> d <g bes> <g bes>
      }
    }
  >>
  \layout {
  }
}