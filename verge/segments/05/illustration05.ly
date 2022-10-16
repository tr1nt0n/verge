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
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/9
            s1 * 1/9
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-2.5 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 3/7
            s1 * 3/7
            % BEFORE:
            % COMMANDS:
            \tempo 16=420
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
            \once \override Score.BarLine.transparent = ##f
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
                    s1 * 1/9
                    s1 * 5/8
                    s1 * 3/7
                    s1 * 5/16
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
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/9
                    {
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        - \staccato
                        \pp
                        % SPANNER_STARTS:
                        \<
                    % CLOSE_BRACKETS:
                    }
                    d''2
                    % AFTER:
                    % SPANNER_STARTS:
                    \(
                    ~
                    d''8
                    % AFTER:
                    % ARTICULATIONS:
                    \ff
                    % SPANNER_STARTS:
                    \>
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        g'''2.
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                    % CLOSE_BRACKETS:
                    }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 4
                    % OPENING:
                    % COMMANDS:
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    bf16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \p
                    % START_BEAM:
                    [
                    % COMMANDS:
                    \boxed-markup "DP, wrapping" 1
                    \tweak Accidental.transparent ##t
                    g16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \f
                    \tweak Accidental.transparent ##t
                    bf16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    r16.
                    \tweak Accidental.transparent ##t
                    f'32
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    % STOP_BEAM:
                    ]
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
                    s1 * 1/9
                    s1 * 5/8
                    s1 * 3/7
                    s1 * 5/16
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
