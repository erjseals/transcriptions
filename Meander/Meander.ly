AUTHORS = "Eric Seals"

\version "2.24.1"  % make sure this matches the version you installed

%\language "english"
\header {
  title = Meander
  tagline = #f
}

% First section, bars 1-7.
part-one = {
  \key d \major
  \time 6/8
  \tempo 8 = 90
}
% Main time signature.
part-two = {
  \time 6/8
  \tempo 8 = 82
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } {
      \relative c' {
        \part-one
        

      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass \relative c {
        \part-one
        R1
        d8 <fis b> <fis b> d <fis b> <fis b>
        d <fis b> <fis b> d <fis b> <fis b>
        d <g b> <g b> d <g b> <g b>
        d <g b> <g b> d <g b> <g b>
        e <a cis> <a cis> e <a cis> <a cis>
        e <a cis> <a cis> e <a cis> <a cis>
        fis <a cis> <a cis> fis <a cis> <a cis>
        fis <a cis> <a cis> fis <a cis> <a cis>
      }
    }
  >>
  \layout {
  }
}