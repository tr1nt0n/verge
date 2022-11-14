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
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=105
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
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=60
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % BEFORE:
            % COMMANDS:
            \tempo 4=130
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
            \tempo 4=69
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
            \time 1/2
            s1 * 1/2
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
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \slurDashed
                    r2
                    % AFTER:
                    % SPANNER_STARTS:
                    (
                    r8
                    % AFTER:
                    % START_BEAM:
                    [
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    ef'8
                    % AFTER:
                    % ARTICULATIONS:
                    - \staccato
                    - \tenuto
                    % SPANNER_STOPS:
                    )
                    % STOP_BEAM:
                    ]
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \slurSolid
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 4
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    g16
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    - \tweak circled-tip ##t
                    \>
                    \(
                    % COMMANDS:
                    \boxed-markup "Crine" 1
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf16
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    d'16
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    f'16
                    % AFTER:
                    % SPANNER_STARTS:
                    \(
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    d'16
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
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'16
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf16
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 2
                    \set stemRightBeamCount = 2
                    % OPENING:
                    % COMMANDS:
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    d'16
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \times 8/11
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
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
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
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
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf16
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'16
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \(
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf16
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
                        \!
                        % SPANNER_STOPS:
                        \)
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        r1
                        % AFTER:
                        % ARTICULATIONS:
                        \ff
                        % SPANNER_STARTS:
                        \<
                        r4
                        \tweak Accidental.transparent ##t
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % COMMANDS:
                        \boxed-markup "DP, wrapping" 1
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        r\breve
                        \tweak Accidental.transparent ##t
                        d'1
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % COMMANDS:
                        \boxed-markup "DP, wrapping" 1
                    % CLOSE_BRACKETS:
                    }
                    s1 * 1/3
                    s1 * 1/2
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
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r4.
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        a'8
                        % AFTER:
                        % START_BEAM:
                        [
                        r8
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    \tweak style #'cross
                    e''2.
                    % AFTER:
                    % SPANNER_STARTS:
                    \<
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    e''2
                    \tweak style #'cross
                    e''2.
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e'''4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'harmonic-mixed
                    e'''8
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    \glissando
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'harmonic-mixed
                    af''8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'cross
                    af''16.
                    \tweak style #'cross
                    e''32
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    \tweak style #'cross
                    e''4
                    % AFTER:
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    e''8..
                    % AFTER:
                    % START_BEAM:
                    [
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'harmonic-mixed
                    a''32
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'harmonic-mixed
                    a''8
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    \tweak style #'harmonic-mixed
                    a''32
                    % OPENING:
                    % COMMANDS:
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e''16.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''8
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
                    \tweak style #'harmonic-mixed
                    b'''8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \ottava 0
                    \tweak style #'cross
                    af''4
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'cross
                    af''8.
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e''16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''4
                    \tweak style #'cross
                    e''2.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % START_BEAM:
                    [
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''4
                    \tweak style #'cross
                    e''1..
                    % AFTER:
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \set suggestAccidentals = ##t
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
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 0
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
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
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
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 2
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
                        >16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                        <
                            \tweak style #'harmonic-mixed
                            fs'
                            \tweak style #'harmonic-mixed
                            cs''
                            \tweak style #'harmonic-mixed
                            af''
                            \tweak style #'harmonic-mixed
                            ef'''
                        >4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 0
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
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
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
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        <
                            \tweak style #'harmonic-mixed
                            b
                            \tweak style #'harmonic-mixed
                            fs'
                            \tweak style #'harmonic-mixed
                            cs''
                            \tweak style #'harmonic-mixed
                            af''
                        >32
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
                    \times 2/3
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
                        <
                            \tweak style #'harmonic-mixed
                            cs'
                            \tweak style #'harmonic-mixed
                            af'
                            \tweak style #'harmonic-mixed
                            ef''
                            \tweak style #'harmonic-mixed
                            bf''
                        >4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
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
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <
                            \tweak style #'harmonic-mixed
                            fs'''
                            \tweak style #'harmonic-mixed
                            cs''''
                            \tweak style #'harmonic-mixed
                            af''''
                            \tweak style #'harmonic-mixed
                            ef'''''
                        >4.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        \ottava 0
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        <
                            \tweak style #'harmonic-mixed
                            bf
                            \tweak style #'harmonic-mixed
                            f'
                            \tweak style #'harmonic-mixed
                            c''
                            \tweak style #'harmonic-mixed
                            g''
                        >16
                        % AFTER:
                        % START_BEAM:
                        [
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \set suggestAccidentals = ##f
                    % CLOSE_BRACKETS:
                    }
                    \tweak style #'triangle
                    eqf''2
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % SPANNER_STARTS:
                    - \tweak padding #8
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {II} \hspace #0.5 }
                    \startTextSpan
                    % COMMANDS:
                    \boxed-markup "XSB" 1
                    r2.
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        r2
                        % AFTER:
                        % COMMANDS:
                        \boxed-markup "Ord." 1
                        \tweak style #'triangle
                        dqf''1
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r1
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                    fss'!2
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % MARKUP:
                    ^ \markup \center-align { \concat { +17 } }
                    % COMMANDS:
                    \boxed-markup "NB, Ord." 1
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        g'!2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align +37
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
                    \times 6/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        c'4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        cs'4.
                        r4
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
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7
                    {
                        r2.
                        \tweak style #'triangle
                        aqf'1
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { {III} \hspace #0.5 }
                        \startTextSpan
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        \tweak style #'triangle
                        gqf'\breve
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r1.
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'!2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { +10 } }
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    b!2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { \concat { -18 } }
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
