AUTHORS = "Eric Seals"

\version "2.24.1"  % make sure this matches the version you installed

%\language "english"
\header {
  title = Baroque
  tagline = #f
}

% First section, bars 1-7.
part-one = {
  \key bes \minor
  \time 4/4
  \tempo 4 = 69
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
        r8 des8 des f f des des f|
        ees1|
        r8 c c f f c c f|
        ees1|
        r8 ees ees ees ees bes bes ees|
        des1|
        r8 c c des des ees ees f|
        f1|

        r8 f' aes f c bes c f|
        c8 a2. ~ a8 ~|
        a8 c des c des f c des|
        c bes2. ~ bes8|
        c8 des bes2.|
        c8 des bes2.|
        c8 a des2.|
        c8 des bes2.|
      }
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass \relative c' {
        \part-one
        <bes des f>4 <bes des f> <bes des f> <bes des f>|
        <a c f>4 <a c f><a c f><a c f>|
        <aes c f>4 <aes c f><aes c f><aes c f>|
        <g bes ees>4 <g bes ees><g bes ees><g bes ees>|
        <ges bes ees>4 <ges bes ees><ges bes ees><ges bes ees>|
        <f bes des>4 <f bes des><f bes des><f bes des>|
        <f a c>4 <f a c><f a c><f a c>|
        <f bes des>4 <f bes des><f bes des><f bes des>|

        <bes des f>4 <bes des f> <bes des f> <bes des f>|
        <a c f>4 <a c f><a c f><a c f>|
        <aes c f>4 <aes c f><aes c f><aes c f>|
        <g bes ees>4 <g bes ees><g bes ees><g bes ees>|
        <ges bes ees>4 <ges bes ees><ges bes ees><ges bes ees>|
        <f bes des>4 <f bes des><f bes des><f bes des>|
        <f a c>4 <f a c><f a c><f a c>|
        <f bes des>4 <f bes des><f bes des><f bes des>|
      }
    }
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 69
  }
}