Key    = { \key c \major }
Tempo  = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #4 "Blues in F"
  composer  = "Eric Bailey"
  copyright = "© 2020 Eric Bailey"
}

\include "oll-core/package.ily"
\loadPackage gridly

\gridInit #9 #'("marks" "upper" "lower")

\gridSetSegmentTemplate #1
\with {
  music = {
    \repeat unfold 4 { s1 \bar "!" }
  }
}

\gridSetSegmentTemplate #2
\with {
  music = {
    \repeat unfold 4 { s1 \bar "!" }
  }
}

\gridSetSegmentTemplate #3
\with {
  music = {
    s1*2
  }
}

\gridSetSegmentTemplate #4
\with {
  music = {
    s1*2
  }
}

\gridSetSegmentTemplate #5
\with {
  music = {
    s1
  }
}

\gridSetSegmentTemplate #6
\with {
  music = {
    s1
  }
}

\gridSetSegmentTemplate #7
\with {
  music = {
    s1
  }
}

\gridSetSegmentTemplate #8
\with {
  music = {
    s1
  }
}

\gridSetSegmentTemplate #9
\with {
  music = {
    s1*4
  }
}
