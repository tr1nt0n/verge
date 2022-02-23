\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 16=240
            \time 5/16
            s1 * 5/16
            \time 7/16
            s1 * 7/16
            \time 1/16
            s1 * 1/16
            \time 6/16
            s1 * 3/8
            \time 3/16
            s1 * 3/16
            \time 7/16
            s1 * 7/16
            \time 1/16
            s1 * 1/16
            \tempo 4=130
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/2
            s1 * 1/2
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 7/15
            s1 * 7/15
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \bar "||"
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        \slurDashed
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        g'8
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs'16
                        r8.
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        r4
                        r16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        ef'16
                        )
                        \slurSolid
                    }
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        fs'32.
                        \f
                        - \staccato
                        - \marcato
                        r32
                        \set stemLeftBeamCount = 4
                        \set stemRightBeamCount = 3
                        e''64
                        - \staccato
                        - \marcato
                    }
                    r8.
                    r16
                    \slurDashed
                    e'8
                    - \tweak circled-tip ##t
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    (
                    af'32
                    ef''16.
                    )
                    \slurSolid
                    r32
                    r32
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        r8
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        f'16
                        \f
                        - \staccato
                        - \marcato
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        cs''16
                        - \staccato
                        - \marcato
                    }
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        a''16
                        - \staccato
                        - \marcato
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        ef'32
                        - \staccato
                        - \marcato
                        ]
                    }
                    s1 * 7/15
                    s1 * 1/2
                    s1 * 2/5
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    r16
                    \slurDashed
                    g4
                    (
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/5
                    {
                        r16
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs'16
                        )
                        \slurSolid
                        r16
                    }
                    \times 4/5
                    {
                        r32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        f'32.
                        - \staccato
                        - \marcato
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        r16
                        r8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        - \staccato
                        - \marcato
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        r16
                        r32
                        \slurDashed
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        cs'16
                        (
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/5
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        ef'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        ef''16
                        )
                        \slurSolid
                        r16
                        r16
                        r16
                    }
                    \times 4/5
                    {
                        r32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        fs''32
                        - \staccato
                        - \marcato
                        r64
                        ]
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        af'2..
                        \mp
                        ^ \markup \center-align { +8 }
                        \<
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                    css''2
                    \mf
                    ^ \markup \center-align { +22 }
                    \>
                    \)
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-two-syntonic-comma-up  }
                        af'2
                        \mp
                        ^ \markup \center-align { +29 }
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7
                    {
                        r4
                        [
                        \slurDashed
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        cs'''8.
                        (
                    }
                    r8
                    r8.
                    g'16
                    )
                    \slurSolid
                    r16
                    \times 4/7
                    {
                        r64
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        af'32
                        - \staccato
                        - \marcato
                        r32.
                        r64
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        e'''4
                        - \staccato
                        - \marcato
                        r8
                        [
                        r16
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r32
                        r16
                        r32
                        r32
                        \slurDashed
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        af'32
                        (
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        f'32
                        )
                        \slurSolid
                    }
                    r16
                    r8.
                    c'''8.
                    - \staccato
                    - \marcato
                    \times 4/7
                    {
                        r64
                        r64
                        r16
                        \set stemLeftBeamCount = 4
                        \set stemRightBeamCount = 0
                        ef''64
                        - \staccato
                        - \marcato
                        ]
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        c'2
                        ^ \markup \center-align { -6 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'2
                    ^ \markup \center-align { -12 }
                    \)
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        c'2..
                        ^ \markup \center-align { +16 }
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
}