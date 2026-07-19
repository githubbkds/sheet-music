\version "2.24.0"

\header {
  title = "Cuerdas de Amor"
  subtitle = "Versión en Re Mayor / Si Menor"
}

cancionAcordes = \chordmode {
  % --- INTRO ---
  \mark \markup \box "INTRO"
  b2:m g2 | d1 \bar "||"
  \break

  % --- VERSO ---
  \mark \markup \box "VERSO"
  \repeat volta 2 { b2:m g2 | d1 | b2:m g2 | d1 }
  \break

  % --- PRECORO ---
  \mark \markup \box "PRECORO"
  a2 d2/a | a1 | d2 a2/cis | b1:m \bar "||" g1 \bar "||"
  \break

  % --- CORO ---
  \mark \markup \box "CORO"
  \repeat volta 2 { d1 | b1:m | fis1:m | g1 } 
  e1:m | b1:m | a1 | a1 \bar "||"
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \cancionAcordes
    }
    
    \new Staff {
      \clef treble
      \key d \major  % Armadura de Re mayor (2 sostenidos, ideal para Bm/D)
      \time 4/4
      \improvisationOn
      
      % INTRO (2 compases)
      b4 b b b | b4 b b b 
      
      % VERSO (4 compases repetidos)
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b | b4 b b b }
      
      % PRECORO (5 compases en total: 4 + 1 aislado)
      b4 b b b | b4 b b b | b4 b b b | b4 b b b | b4 b b b 
      
      % CORO (4 compases repetidos + 4 de salida)
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b | b4 b b b }
      b4 b b b | b4 b b b | b4 b b b | b4 b b b 
    }
  >>
  \layout {
    indent = 0\mm
  }
}