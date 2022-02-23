    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 3/4
            s1 * 3/4
            \tempo 4=105
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 6/4
            s1 * 3/2
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \tempo 4=60
            \time 6/4
            s1 * 3/2
            \tempo 4=130
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 1/4
            s1 * 1/4
            \tempo 4=69
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/2
            s1 * 1/2
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
                    r2
                    r8
                    ef'8
                    - \staccato
                    - \tenuto
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    \staff-line-count 4
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    g16
                    - \tweak circled-tip ##t
                    \>
                    [
                    \(
                    \boxed-markup "Crine" 1
                    \tweak Accidental.transparent ##t
                    bf16
                    \tweak Accidental.transparent ##t
                    d'16
                    \)
                    \tweak Accidental.transparent ##t
                    f'16
                    \(
                    \tweak Accidental.transparent ##t
                    d'16
                    \tweak Accidental.transparent ##t
                    bf16
                    \)
                    \times 4/5
                    {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        g16
                        [
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        bf16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        f'16
                        \)
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak Accidental.transparent ##t
                        g16
                        \(
                    }
                    \tweak Accidental.transparent ##t
                    bf16
                    \tweak Accidental.transparent ##t
                    d'16
                    \)
                    \times 8/11
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        f'16
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        bf16
                        \)
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        g16
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        bf16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        d'16
                        \)
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        f'16
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        bf16
                        \)
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        g16
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak Accidental.transparent ##t
                        bf16
                    }
                    \times 4/5
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        d'16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        f'16
                        \)
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        g16
                        \(
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak Accidental.transparent ##t
                        bf16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \tweak Accidental.transparent ##t
                        d'16
                        \!
                        \)
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        r2.
                        \ff
                        \<
                        r2
                        \tweak Accidental.transparent ##t
                        f'4
                        - \marcato
                        \boxed-markup "DP, wrapping" 1
                    }
                    \times 2/3
                    {
                        r1.
                        r2
                        \tweak Accidental.transparent ##t
                        d'1
                        \fff
                        - \marcato
                        \boxed-markup "DP, wrapping" 1
                    }
                    s1 * 1/3
                    s1 * 1/2
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        \slurDashed
                        r8
                        \pp
                        [
                        (
                        r4
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        a8
                        )
                        \slurSolid
                        r8
                        ]
                    }
                    \tweak style #'cross
                    e''2.
                    \<
                    ~
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    e''2
                    \tweak style #'cross
                    e''2.
                    \glissando
                    - \baca-circle-markup
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
                    ~
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'harmonic-mixed
                    e'''8
                    [
                    \glissando
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
                    ~
                    - \baca-circle-markup
                    \tweak style #'cross
                    af''16.
                    \tweak style #'cross
                    e''32
                    ~
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''8
                    ]
                    \tweak style #'cross
                    e''4
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    e''8..
                    [
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'harmonic-mixed
                    a''32
                    ~
                    \glissando
                    - \baca-circle-markup
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'harmonic-mixed
                    a''8
                    ~
                    \tweak style #'harmonic-mixed
                    a''32
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e''16.
                    ~
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    e''8
                    \ottava 1
                    \tweak style #'harmonic-mixed
                    b'''8
                    ]
                    - \baca-circle-markup
                    \ottava 0
                    \tweak style #'cross
                    af''4
                    ~
                    \glissando
                    - \baca-circle-markup
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'cross
                    af''8.
                    [
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e''16
                    ~
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''4
                    \tweak style #'cross
                    e''2.
                    ~
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''8
                    [
                    \tweak style #'cross
                    e''8
                    ~
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    e''4
                    \tweak style #'cross
                    e''1..
                    \f
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        \set suggestAccidentals = ##t
                        <
                            \tweak style #'harmonic-mixed
                            g
                            \tweak style #'harmonic-mixed
                            d'
                            \tweak style #'harmonic-mixed
                            a'
                            \tweak style #'harmonic-mixed
                            e''
                        >4
                        \glissando
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
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
                        >16
                        [
                        \glissando
                        \ottava 0
                    }
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 1
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
                        \glissando
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
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
                        >16
                        ]
                        \glissando
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
                        \glissando
                    }
                    \times 4/7
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
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
                        >32
                        [
                        \glissando
                        \ottava 0
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        <
                            \tweak style #'harmonic-mixed
                            g
                            \tweak style #'harmonic-mixed
                            d'
                            \tweak style #'harmonic-mixed
                            a'
                            \tweak style #'harmonic-mixed
                            e''
                        >32
                        \glissando
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
                        \glissando
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
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
                        >8
                        ]
                        \glissando
                        \ottava 0
                    }
                    \times 2/3
                    {
                        <
                            \tweak style #'harmonic-mixed
                            g
                            \tweak style #'harmonic-mixed
                            d'
                            \tweak style #'harmonic-mixed
                            a'
                            \tweak style #'harmonic-mixed
                            e''
                        >4
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
                        \glissando
                        <
                            \tweak style #'harmonic-mixed
                            g
                            \tweak style #'harmonic-mixed
                            d'
                            \tweak style #'harmonic-mixed
                            a'
                            \tweak style #'harmonic-mixed
                            e''
                        >4
                        \glissando
                    }
                    \times 4/7
                    {
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
                        \glissando
                        \ottava 0
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
                        \set suggestAccidentals = ##f
                    }
                    \tweak style #'triangle
                    eqf''2
                    - \tenuto
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {II} \hspace #0.5 }
                    - \tweak padding 8
                    \startTextSpan
                    \boxed-markup "XSB" 1
                    r2.
                    \times 4/5
                    {
                        r2
                        \boxed-markup "Ord." 1
                        \tweak style #'triangle
                        dqf''1
                        - \tenuto
                        r1
                        \stopTextSpan
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                    fss'2
                    \mp
                    ^ \markup \center-align { +17 }
                    \boxed-markup "NB, Ord." 1
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        g'2
                        ^ \markup \center-align +37
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
                    \times 6/7
                    {
                        \slurDashed
                        c'4
                        (
                        cs'4.
                        )
                        \slurSolid
                        r8
                        r8
                    }
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/7
                    {
                        r2.
                        \tweak style #'triangle
                        aqf'1
                        - \tenuto
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { {III} \hspace #0.5 }
                        - \tweak padding 6
                        \startTextSpan
                    }
                    \times 4/7
                    {
                        \tweak style #'triangle
                        gqf'\breve
                        - \tenuto
                        r1.
                        \stopTextSpan
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        fs'2
                        ^ \markup \center-align { +10 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    b2
                    ^ \markup \center-align { -18 }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
