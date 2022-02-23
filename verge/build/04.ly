    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 8=210
            \time 3/8
            s1 * 3/8
            \time 5/8
            s1 * 5/8
            \time 7/8
            s1 * 7/8
            \time 1/8
            s1 * 1/8
            \time 6/8
            s1 * 3/4
            \time 5/8
            s1 * 5/8
            \time 7/8
            s1 * 7/8
            \tempo 4=60
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            #(ly:expect-warning "strange time signature found")
            \time 5/9
            s1 * 5/9
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
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
            \time 1/3
            s1 * 1/3
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            \tempo 8=260
            \time 6/8
            s1 * 3/4
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
                    s1 * 3/8
                    ^ \markup 0
                    s1 * 3/8
                    ^ \markup 1
                    s1 * 1/4
                    ^ \markup 2
                    s1 * 7/8
                    ^ \markup 3
                    s1 * 1/8
                    ^ \markup 4
                    s1 * 3/4
                    ^ \markup 5
                    s1 * 3/8
                    ^ \markup 6
                    s1 * 1/4
                    ^ \markup 7
                    s1 * 7/8
                    ^ \markup 8
                    s1 * 5/9
                    ^ \markup 9
                    s1 * 2/5
                    ^ \markup 10
                    s1 * 1/2
                    ^ \markup 11
                    s1 * 1/3
                    ^ \markup 12
                    s1 * 1/3
                    ^ \markup 13
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \tweak Accidental.transparent ##t
                        g8
                        ^ \markup 14
                        [
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \tweak Accidental.transparent ##t
                        bf32
                        ^ \markup 15
                        r32
                        ^ \markup 16
                    }
                    \times 2/3
                    {
                        r16
                        ^ \markup 17
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak Accidental.transparent ##t
                        d'16
                        ^ \markup 18
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak Accidental.transparent ##t
                        f'8
                        ^ \markup 19
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \tweak Accidental.transparent ##t
                        d'8
                        ^ \markup 20
                        ]
                    }
                    \tweak Accidental.transparent ##t
                    bf8
                    ^ \markup 21
                    [
                    \tweak Accidental.transparent ##t
                    g16
                    ^ \markup 22
                    r16
                    ^ \markup 23
                    \tweak Accidental.transparent ##t
                    bf16
                    ^ \markup 24
                    \tweak Accidental.transparent ##t
                    d'16
                    ^ \markup 25
                    ]
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    ^ \markup 26
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    f'''4.
                    ^ \markup 0
                    ~
                    f'''4.
                    ^ \markup 1
                    ~
                    f'''4
                    ^ \markup 2
                    ~
                    f'''8
                    ^ \markup 3
                    r4
                    ^ \markup 4
                    af2
                    ^ \markup 5
                    r8
                    ^ \markup 6
                    r8
                    ^ \markup 7
                    [
                    cs'8
                    ^ \markup 8
                    ef'8
                    ^ \markup 9
                    ]
                    fs'8
                    ^ \markup 10
                    [
                    a'8
                    ^ \markup 11
                    e''8
                    ^ \markup 12
                    ]
                    r8
                    ^ \markup 13
                    e'''4
                    ^ \markup 14
                    ~
                    e'''4
                    ^ \markup 15
                    ~
                    e'''8
                    ^ \markup 16
                    r4
                    ^ \markup 17
                    e'16
                    ^ \markup 18
                    [
                    g'16
                    ^ \markup 19
                    ~
                    g'16
                    ^ \markup 20
                    c'''16
                    ^ \markup 21
                    ~
                    c'''16
                    ^ \markup 22
                    d'16
                    ^ \markup 23
                    e'''16
                    ^ \markup 24
                    f''16
                    ^ \markup 25
                    ]
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/9
                    {
                        \tweak style #'cross
                        fs'2
                        ^ \markup 26
                        ~
                        - \baca-circle-markup
                        \tweak style #'harmonic-mixed
                        fs'8
                        ^ \markup 27
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak style #'cross
                        d'2
                        ^ \markup 28
                        - \baca-circle-markup
                    }
                    \tweak style #'cross
                    d'2
                    ^ \markup 29
                    - \baca-circle-markup
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        ^ \markup 30
                        - \baca-circle-markup
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        ^ \markup 31
                        - \baca-circle-markup
                    }
                    \times 4/5
                    {
                        \set stemLeftBeamCount = 0
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
                        ^ \markup 32
                        [
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
                        ^ \markup 33
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
                        ^ \markup 34
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
                        ^ \markup 35
                    }
                    \times 4/5
                    {
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
                        ^ \markup 36
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
                        ^ \markup 37
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
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
                        ^ \markup 38
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
                        ^ \markup 39
                    }
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    ^ \markup 40
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    s1 * 3/8
                    ^ \markup 0
                    s1 * 3/8
                    ^ \markup 1
                    s1 * 1/4
                    ^ \markup 2
                    s1 * 7/8
                    ^ \markup 3
                    s1 * 1/8
                    ^ \markup 4
                    s1 * 3/4
                    ^ \markup 5
                    s1 * 3/8
                    ^ \markup 6
                    s1 * 1/4
                    ^ \markup 7
                    s1 * 7/8
                    ^ \markup 8
                    s1 * 5/9
                    ^ \markup 9
                    s1 * 2/5
                    ^ \markup 10
                    s1 * 1/2
                    ^ \markup 11
                    s1 * 1/3
                    ^ \markup 12
                    s1 * 1/3
                    ^ \markup 13
                    s2.
                    ^ \markup 14
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    ^ \markup 15
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
