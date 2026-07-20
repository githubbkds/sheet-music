\version "2.24.0"

\header {
  title = "Cuerdas de Amor"
  subtitle = "Tono (Bm)"
  composer = "Julio Melgar"
  arranger = "B.S." % Aquí puedes poner tu nombre como transcriptor
}

cancionAcordes = \chordmode {
  % --- INTRO ---
  \mark \markup \box "Intro"
  \repeat volta 2 { b2:m g2 | d1 } 
  \break

  % --- SECCIÓN A (aunque pase el tiempo) ---
  \mark \markup \box "A"
  \repeat volta 2 { b2:m g2 | d2 a2 | b2:m g2 | }
  \alternative {
    { d2 a2 } % Casilla 1
    { d1 }    % Casilla 2
  }
  \break

  % --- SECCIÓN B (tus cuerdas de amor) ---
  \mark \markup \box "B"
  \repeat volta 2 { a2 fis2:m | g1 | d2 a2 | b1:m }
  \break

  % --- SECCIÓN C (es tu amor) ---
  \mark \markup \box "C"
  \repeat volta 2 { d1 | b1:m | fis1:m | g1 }
  e1:m | d1 | a1 \bar "||"
  \break

  % --- SECCIÓN D (los velos) ---
  \mark \markup \box "D"
  \repeat volta 2 { b2:m g2 | d2 a2 | b2:m g2 | }
  \alternative {
    { d2 a2 } % Casilla 1
    { d1 }    % Casilla 2
  }
  \break

  % --- FINAL ---
  \mark \markup \box "Final"
  b1:m \bar "|."
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \cancionAcordes
    }
    
    \new Staff {
      \clef treble
      \key d \major  % Armadura con 2 sostenidos (adecuada para Bm / D mayor)
      \time 4/4
      \improvisationOn
      
      % Intro
      \repeat volta 2 { b4 b b b | b4 b b b }
      
      % A
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b }
      \alternative {
        { b4 b b b }
        { b4 b b b }
      }
      
      % B
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b | b4 b b b }
      
      % C
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b | b4 b b b }
      b4 b b b | b4 b b b | b4 b b b 
      
      % D
      \repeat volta 2 { b4 b b b | b4 b b b | b4 b b b }
      \alternative {
        { b4 b b b }
        { b4 b b b }
      }
      
      % Final
      b1
    }
  >>
  \layout {
    indent = 0\mm
  }
}