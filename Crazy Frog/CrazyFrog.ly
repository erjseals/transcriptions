AUTHORS = "Eric Seals"

\version "2.24.1"  % make sure this matches the version you installed

%\language "english"
\header {
  title = Shh
  tagline = #f
}

% First section, bars 1-7.
part-one = {
  \key des \lydian
  \time 4/4
  \tempo 4 = 121
}
% Main time signature.
part-two = {
  \time 6/4
  \tempo "Moderato"
}
% Only the coda.
part-three = {
  \time 2/2
  \tempo "Moderato"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } {
      \relative c' {
        \part-one
        <c ees f aes>4. <c ees f bes>8~<c ees f bes>2 |
        <c d f a>1 |
        <c ees f aes>4. <c ees f bes>8~<c ees f bes>2 |
        <c d f a>4. <c d f a>8~<c d f a>2 |
        <c ees f aes>4. <bes c ees g>8~<bes c ees g>2 |
        <a c d f>1 |
        <c ees f aes>4. <bes c ees g>8~<bes c ees g>2 |
        <a c d f>4. <aes c des f>8~<aes c des f>2|

        <c ees f aes>4. <c ees f bes>8~<c ees f bes>2 |
        <c d f a>1 |
        <c ees f aes>4. <c ees f bes>8~<c ees f bes>2 |
        <c d f a>4. <c d f a>8~<c d f a>2 |
        <c ees f aes>4. <bes c ees g>8~<bes c ees g>2 |
        <a c d f>1 |
        <c ees f aes>4. <bes c ees g>8~<bes c ees g>2 |
        <a c d f>4. <aes c des f>8~<aes c des f>2|
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass \relative c' {
        \part-one
        <des,>4. <aes>8~<aes>2  |
        <bes>1 |
        <des>4. <aes>8~<aes>2  |
        <bes>4. <f>8~<f>2 |
        <des>4. <c>8~<c>2 |
        <bes>1 |
        <des>4. <c>8~<c>2 |
        <bes'>4. <bes,>8~<bes>2 |

        <des'>4. <aes>8~<aes>2  |
        <bes>1 |
        <des>4. <aes>8~<aes>2  |
        <bes>4. <f>8~<f>2 |
        <des>4. <c>8~<c>2 |
        <bes>1 |
        <des>4. <c>8~<c>2 |
        <bes'>4. <bes,>8~<bes>2 |
      }
    }
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 121
  }
}