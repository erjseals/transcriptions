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
        r4 d'16 c d4. ~
        d4 c16 bes a8 bes g
        bes16 c g2 ~ g8 ~
        g2.
        c2. 
        r4 g16 bes a4.
        g2. ~
        g2.

        <g g'>2. ~
        <g g'>4 <g g'>16 <a a'> <bes bes'>8 <g g'> <c c'>
        <c c'>16 <d d'> <g, g'>2 ~ <g g'>8 ~
        <g g'>2.
        r4 <c c'>16 <bes bes'> <c c'>4. ~
        <c c'>4 <c c'>16 <bes bes'> <a a'>8 <bes bes'> <a a'>
        <g g'>2. ~
        <g g'>2.
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
        ees <g d'> <g d'> ees <g d'> <g d'>
        ees <g d'> <g d'> ees <g d'> <g d'>
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