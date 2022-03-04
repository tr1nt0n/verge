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
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 1/8
                    s1 * 3/4
                    s1 * 3/8
                    s1 * 1/4
                    s1 * 7/8
                    s1 * 5/9
                    - \tweak circled-tip ##t
                    \>
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 1/3
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g8
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        [
                        \(
                        \boxed-markup "Crine" 1
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \abjad-color-music #'DarkRed
                        r32
                    }
                    \times 2/3
                    {
                        \abjad-color-music #'DarkRed
                        r16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'16
                        \(
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'8
                        ]
                    }
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf8
                    [
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    g16
                    \)
                    \abjad-color-music #'DarkRed
                    r16
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    bf16
                    \(
                    \abjad-color-music #'DarkRed
                    \tweak Accidental.transparent ##t
                    d'16
                    \f
                    \)
                    ]
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
                    f'''4.
                    \mp
                    - \tenuto
                    \<
                    ~
                    f'''4.
                    ~
                    f'''4
                    \mf
                    \>
                    ~
                    f'''8
                    \p
                    r4
                    af2
                    - \tenuto
                    r8
                    r8
                    [
                    cs'8
                    \(
                    ef'8
                    ]
                    fs'8
                    [
                    a'8
                    \)
                    e''8
                    - \tenuto
                    ]
                    r8
                    e'''4
                    - \accent
                    \<
                    ~
                    e'''4
                    ~
                    e'''8
                    r4
                    e'16
                    - \accent
                    [
                    g16
                    - \accent
                    ~
                    g16
                    c'''16
                    - \accent
                    ~
                    c'''16
                    d'16
                    - \accent
                    e'''16
                    - \accent
                    f''16
                    - \accent
                    ]
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/9
                    {
                        \tweak style #'cross
                        fs'2
                        \f
                        ~
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        \tweak style #'harmonic-mixed
                        fs'8
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak style #'cross
                        d'2
                        - \baca-circle-markup
                    }
                    \tweak style #'cross
                    d'2
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak style #'cross
                        d'2
                        - \baca-circle-markup
                    }
                    \times 4/5
                    {
                        \set suggestAccidentals = ##t
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
                        [
                        \glissando
                        \set stemLeftBeamCount = 3
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
                        \glissando
                        \ottava 0
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
                        \glissando
                        \set stemLeftBeamCount = 2
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
                        \glissando
                        \ottava 0
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
                        \glissando
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
                        \set suggestAccidentals = ##f
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
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
