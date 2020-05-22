\version "2.20.0"

\include "../global.ily"

\gridPutMusic "lower" 1
\relative c, {
  f4 r8 b c4 ees8 e |
  f4 r8 b, c4 ees8 ges, |
  f4 r8 b c4 ees8 e |
  f4 r r2 |
}
\gridCompileCell "lower" 1

\gridPutMusic "lower" 2
\relative c, {
  f4 r8 b c4 ees8 e |
  f4 r8 b, c ees4 ges,8 |
  f4 r8 b c4 ees8 e |
  f4 r r2 |
}
\gridCompileCell "lower" 2

\gridPutMusic "lower" 3
\relative c {
  bes4 r8 e, f4 aes8 a |
  bes4 r8 e f des ees f |
}
\gridCompileCell "lower" 3

\gridPutMusic "lower" 4
\relative c, {
  f4 r8 b c4 ees8 e |
  f4 r r2 |
}
\gridCompileCell "lower" 4

\gridPutMusic "lower" 5
\relative c {
  c4 r8 ges g4 aes8 a |
}
\gridCompileCell "lower" 5

\gridPutMusic "lower" 6
\relative c {
  bes4 r8 e, f4 bes8 b |
}
\gridCompileCell "lower" 6

\gridPutMusic "lower" 7
\relative c {
  c4 r8 ges g4 aes8 a |
}
\gridCompileCell "lower" 7

\gridPutMusic "lower" 8
\relative c {
  bes4 r8 e f des ees f |
}
\gridCompileCell "lower" 8

\gridPutMusic "lower" 9
\relative c, {
  f4 r8 b c4 ees8 e |
  f4 r8 b, c4 ees8 ges, |
  f4 r8 b c4 ees8 e |
  R1 |
}
\gridCompileCell "lower" 9
