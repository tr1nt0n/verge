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
            \tempo 8=210
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=60
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 5/9
            s1 * 5/9
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
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
            \time 1/3
            s1 * 1/3
            % BEFORE:
            % COMMANDS:
            \tempo 8=260
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
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
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 1/8
                    s1 * 3/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 5/9
                    % AFTER:
                    % SPANNER_STARTS:
                    - \tweak circled-tip ##t
                    \>
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 1/3
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        % COMMANDS:
                        \boxed-markup "Crine" 1
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        r32
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        r16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'8
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'8
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf8
                    % AFTER:
                    % START_BEAM:
                    [
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    g16
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    r16
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf16
                    % AFTER:
                    % SPANNER_STARTS:
                    \(
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 0
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    d'16
                    % AFTER:
                    % ARTICULATIONS:
                    \f
                    % SPANNER_STOPS:
                    \)
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
            \context Staff = "violin 2 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "violin 2 voice"
                {
                    f'''4.
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    \mp
                    % SPANNER_STARTS:
                    \<
                    ~
                    f'''4.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    f'''4
                    % AFTER:
                    % ARTICULATIONS:
                    \mf
                    % SPANNER_STARTS:
                    \>
                    ~
                    f'''8
                    % AFTER:
                    % ARTICULATIONS:
                    \p
                    r4
                    af2
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    r8
                    r8
                    % AFTER:
                    % START_BEAM:
                    [
                    cs'8
                    % AFTER:
                    % SPANNER_STARTS:
                    \(
                    ef'8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    fs'8
                    % AFTER:
                    % START_BEAM:
                    [
                    a'8
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    e''8
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % STOP_BEAM:
                    ]
                    r8
                    e'''4
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % SPANNER_STARTS:
                    \<
                    ~
                    e'''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    e'''8
                    r4
                    e'16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % START_BEAM:
                    [
                    g16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % SPANNER_STARTS:
                    ~
                    g16
                    c'''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % SPANNER_STARTS:
                    ~
                    c'''16
                    d'16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    e'''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    f''16
                    % AFTER:
                    % ARTICULATIONS:
                    - \accent
                    % STOP_BEAM:
                    ]
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/9
                    {
                        \tweak style #'cross
                        fs'2
                        % AFTER:
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        \tweak style #'harmonic-mixed
                        fs'8
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak style #'cross
                        d'2
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    \tweak style #'cross
                    d'2
                    % AFTER:
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \set suggestAccidentals = ##t
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        <
                            \tweak style #'harmonic-mixed
                            gqs
                            \tweak style #'harmonic-mixed
                            dqs'
                            \tweak style #'harmonic-mixed
                            aqs'
                            \tweak style #'harmonic-mixed
                            eqs''
                        >32
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        <
                            \tweak style #'harmonic-mixed
                            fs'''
                            \tweak style #'harmonic-mixed
                            cs''''
                            \tweak style #'harmonic-mixed
                            af''''
                            \tweak style #'harmonic-mixed
                            ef'''''
                        >32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 2
                        <
                            \tweak style #'harmonic-mixed
                            bf
                            \tweak style #'harmonic-mixed
                            f'
                            \tweak style #'harmonic-mixed
                            c''
                            \tweak style #'harmonic-mixed
                            g''
                        >32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        <
                            \tweak style #'harmonic-mixed
                            fs'''
                            \tweak style #'harmonic-mixed
                            cs''''
                            \tweak style #'harmonic-mixed
                            af''''
                            \tweak style #'harmonic-mixed
                            ef'''''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        <
                            \tweak style #'harmonic-mixed
                            fs'
                            \tweak style #'harmonic-mixed
                            cs''
                            \tweak style #'harmonic-mixed
                            af''
                            \tweak style #'harmonic-mixed
                            ef'''
                        >8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        <
                            \tweak style #'harmonic-mixed
                            fs'''
                            \tweak style #'harmonic-mixed
                            cs''''
                            \tweak style #'harmonic-mixed
                            af''''
                            \tweak style #'harmonic-mixed
                            ef'''''
                        >8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        <
                            \tweak style #'harmonic-mixed
                            gqs
                            \tweak style #'harmonic-mixed
                            dqs'
                            \tweak style #'harmonic-mixed
                            aqs'
                            \tweak style #'harmonic-mixed
                            eqs''
                        >4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        <
                            \tweak style #'harmonic-mixed
                            b
                            \tweak style #'harmonic-mixed
                            fs'
                            \tweak style #'harmonic-mixed
                            cs''
                            \tweak style #'harmonic-mixed
                            af''
                        >16
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \set suggestAccidentals = ##f
                    % CLOSE_BRACKETS:
                    }
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
                    s1 * 3/8
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 1/8
                    s1 * 3/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 5/9
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 1/3
                    s2.
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
