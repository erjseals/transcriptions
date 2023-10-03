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
        \repeat volta 2 {
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
        <d' d'>2. ~
        <d d'>4 <d d'>16 <ces ces'> <c c'> <b b'> <bes bes'> <a a'> <bes bes'> <c c'>
        <c c'> <d d'> <g, g'>2 ~ <g g'>8 ~
        <g g'>2.
        <c c'>2. ~
        <c c'>4 <c c'>16 <bes bes'> <a a'> <g g'> <a a'> <bes bes'> <a a'> <bes bes'>
        <a a'> <bes bes'> <fis fis'>2 ~ <fis fis'>8 ~
        <fis fis'>8 <d d'>16 <ees ees'> <e e'> <f f'> <fis fis'> <g g'> <a a'> <bes bes'> <c c'> <d d'>
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass \relative c {
        \part-one
        \repeat volta 2 {
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
        g, <g' bes d> <g bes d> g, <g' bes d> <g bes d>
        g, <g' bes d> <g bes d> g, <g' bes d> <g bes d>
        ees, <ees' g c> <ees g c> ees, <ees' g c> <ees g c>
        ees, <ees' g c> <ees g c> ees, <ees' g c> <ees g c>
        fis, <fis' a c> <fis a c> fis, <fis' a c> <fis a c>
        fis, <fis' a c> <fis a c> fis, <fis' a c> <fis a c>
        d, <d' fis a> <d fis a> d, <d' fis a> <d fis a>
        d, <d' fis a> <d fis a> d, <d' fis a> <d fis a>
      }
    }
  >>
  \layout {
  }
}