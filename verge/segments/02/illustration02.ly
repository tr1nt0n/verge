\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 16=240
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 1/16
            s1 * 1/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 7/15
            s1 * 7/15
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % AFTER:
            % COMMANDS:
            \bar "||"
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context GrandStaff = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context Staff = "violin 1 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 1 voice"
                {
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        g'8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs'16
                        r8.
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        ef'16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 3
                        fs'32.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        \f
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 4
                        e''64
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                    % CLOSE_BRACKETS:
                    }
                    r8.
                    r16
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \slurDashed
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    e'8
                    % AFTER:
                    % SPANNER_STARTS:
                    (
                    - \tweak circled-tip ##t
                    - \tweak stencil #abjad-flared-hairpin
                    \<
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 3
                    af'32
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    ef''16.
                    r16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/6
                    {
                        r4
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        \f
                        % START_BEAM:
                        [
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        cs''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        a''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        ef'32
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    s1 * 7/15
                    s1 * 1/2
                    s1 * 2/5
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 2 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 2 voice"
                {
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \slurDashed
                    r16
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    (
                    g8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    g8
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/5
                    {
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af8
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs'16
                        r16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 2
                        f'32.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        r8.
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r16.
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        cs'16
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/5
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        ef'16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        ef''16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                        r8.
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        fs''32
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        r64
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        af'!2..
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % MARKUP:
                        ^ \markup \center-align { \concat { +8 } }
                        % SPANNER_STARTS:
                        \(
                        \<
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                    css''!2
                    % AFTER:
                    % ARTICULATIONS:
                    \mf
                    % MARKUP:
                    ^ \markup \center-align { \concat { +22 } }
                    % SPANNER_STOPS:
                    \)
                    % SPANNER_STARTS:
                    \>
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-two-syntonic-comma-up  }
                        af'!2
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % MARKUP:
                        ^ \markup \center-align { \concat { +29 } }
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 3 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 3 voice"
                {
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        cs'''8.
                        % AFTER:
                        % START_BEAM:
                        [
                    % CLOSE_BRACKETS:
                    }
                    r8.
                    r8
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 2
                    g'16
                    r16
                    % AFTER:
                    % SPANNER_STOPS:
                    )
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \slurSolid
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        r64
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        af'32
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        e'''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        [
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r8
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        r32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        af'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 2
                        f'32
                    % CLOSE_BRACKETS:
                    }
                    r8.
                    r16
                    % AFTER:
                    % SPANNER_STOPS:
                    )
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \slurSolid
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    c'''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    % SPANNER_STARTS:
                    ~
                    c'''8
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        r16.
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 4
                        \set stemRightBeamCount = 0
                        ef''64
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        c'!2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { -6 } }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'!2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { \concat { -12 } }
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        c'!2..
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { +16 } }
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
}
