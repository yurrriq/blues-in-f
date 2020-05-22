\version "2.20.0"

\include "global.ily"

\loadModule oll-core.util.include-pattern
\setOption oll-core.include-pattern.log-includes ##t
\includePattern "parts" ".*\\.ily"

\gridSetRange #'(1 . 9)
\gridDisplay
\gridCheck

#(set-global-staff-size 26)

\paper {
  #(set-paper-size "arch a")
  tagline = ##f
  #(define fonts
    (set-global-fonts
     #:music "improviso"
     #:brace "improviso"
     #:roman "Permanent Marker"
     #:sans "Pea Missy with a Marker"
     #:typewriter "Thickmarker"
     #:factor (/ staff-height pt 20)
   ))
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" <<
      \global
      \new Voice \gridGetMusic "marks"
      \clef "treble"
      \Key
      \new Voice \gridGetMusic "upper"
    >>
    \new Staff = "LH" <<
      \clef "bass"
      \Key
      \gridGetMusic "lower"
    >>
  >>
  \layout {
    indent = 0\in
    \override Hairpin.thickness = #2
    \override PhrasingSlur.line-thickness = #2
    \override PhrasingSlur.thickness = #0
    \override PianoPedalBracket.thickness = #2
    \override Slur.line-thickness = #2
    \override Slur.thickness = #0
    \override Tie.line-thickness = #2
    \override Tie.thickness = #0
    \override TupletBracket.thickness = #2
    \override Voice.Stem.thickness = #2.5
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/8)
      \override Clef.break-visibility = #'#(#f #f #f)
      \override KeySignature.break-visibility = #'#(#f #f #f)
      \override SystemStartBar.thickness = #3
      \override VoltaBracket.thickness = #2
    }
    \context {
      \Staff
      \override BarLine.hair-thickness = #3
      \override BarLine.thick-thickness = #6
      \override Beam.beam-thickness = #0.5
      \override Beam.length-fraction = #1.0
    }
    \context {
      \PianoStaff
      \override SystemStartBrace.padding = #0.5
      \override SystemStartBrace.thickness = #0.25
    }
  }
  \midi { }
}
