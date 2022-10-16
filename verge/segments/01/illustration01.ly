\version "2.20.0"
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
            \tempo 4=77
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=105
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \break
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/5
            s1 * 1/5
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
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
                \context Voice = "violin 1 voice"
                {
                    s2.
                    s2
                    s2.
                    s2
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \slurDashed
                    ef'4
                    % AFTER:
                    % SPANNER_STARTS:
                    (
                    r4
                    f'4
                    % AFTER:
                    % SPANNER_STOPS:
                    )
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \slurSolid
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 1/5
                    s1 * 1/4
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 2 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "violin 2 voice"
                {
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic 11:10
                    % OPEN_BRACKETS:
                    \times 30/33
                    {
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        \fff
                        % START_BEAM:
                        [
                        % COMMANDS:
                        \boxed-markup "As full bows as possible" 1
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic 23:20
                    % OPEN_BRACKETS:
                    \times 60/69
                    {
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % START_BEAM:
                        [
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r4
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        (
                        \<
                        a'2.
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \>
                        fs'4
                        % AFTER:
                        % ARTICULATIONS:
                        \!
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    r8
                    \tweak style #'triangle
                    bqf8
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    \ff
                    % SPANNER_STARTS:
                    - \tweak padding #8
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    \startTextSpan
                    ~
                    % COMMANDS:
                    \boxed-markup "XSB" 1
                    \tweak style #'triangle
                    bqf4
                    r4
                    % AFTER:
                    % SPANNER_STOPS:
                    \stopTextSpan
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 4
                    % OPENING:
                    % COMMANDS:
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    g8
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    % START_BEAM:
                    [
                    % COMMANDS:
                    - \tweak padding #6
                    \boxed-markup "DP, wrapping" 1
                    r16
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 5
                    % OPENING:
                    % COMMANDS:
                    \clef "treble"
                    \tweak style #'triangle
                    gqf'16
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    - \tweak padding #16
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    \startTextSpan
                    ~
                    % COMMANDS:
                    - \tweak padding #6
                    \boxed-markup "Ord." 1
                    \tweak style #'triangle
                    gqf'4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    \tweak style #'triangle
                    gqf'2.
                    r4
                    \tweak style #'triangle
                    bqs4
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % SPANNER_STARTS:
                    ~
                    \tweak style #'triangle
                    bqs4
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 4
                    % OPENING:
                    % COMMANDS:
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    bf32
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    % SPANNER_STOPS:
                    \stopTextSpan
                    % START_BEAM:
                    [
                    % COMMANDS:
                    - \tweak padding #6
                    \boxed-markup "DP, wrapping" 1
                    \tweak Accidental.transparent ##t
                    g32
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    r16
                    r16
                    \tweak Accidental.transparent ##t
                    bf32
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \tweak Accidental.transparent ##t
                    f'32
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    r16
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 5
                    % OPENING:
                    % COMMANDS:
                    \clef "treble"
                    \tweak style #'triangle
                    dqf'8.
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    - \tweak padding #12
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    \startTextSpan
                    % COMMANDS:
                    - \tweak padding #6
                    \boxed-markup "Ord." 1
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'4
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % MARKUP:
                    ^ \markup \center-align { -16 }
                    % SPANNER_STOPS:
                    \stopTextSpan
                    % SPANNER_STARTS:
                    \(
                    % COMMANDS:
                    \boxed-markup "NB" 1
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -35 }
                        % SPANNER_STOPS:
                        \)
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        bs'2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -4 }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    a'2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { -23 }
                    % SPANNER_STOPS:
                    \)
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 3 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "violin 3 voice"
                {
                    s2.
                    s2
                    s2.
                    s2
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r4.
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        d''2
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 1/4
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    a2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { +0 }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f'2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -4 }
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        ds'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { +12 }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    b4
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { +8 }
                    % SPANNER_STOPS:
                    \)
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
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
