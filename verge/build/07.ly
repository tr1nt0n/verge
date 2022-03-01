    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=130
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
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
            \time 1/4
            s1 * 1/4
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 3/7
            s1 * 3/7
            \time 9/4
            s1 * 9/4
            \time 9/4
            s1 * 9/4
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \time 6/4
            s1 * 3/2
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            \tempo 4=77
            \time 5/4
            s1 * 5/4
            - \markup \abs-fontsize #12 { X5 }
            \stopTextSpan
            \time 5/4
            s1 * 5/4
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    \times 2/3
                    {
                        \staff-line-count 5
                        \slurDashed
                        \clef "treble"
                        r4
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        (
                        \boxed-markup "NB" 1
                        r16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        ef'''16
                        \f
                        )
                        ]
                        \slurSolid
                    }
                    \times 2/3
                    {
                        r4
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        fs'''8
                        - \staccato
                        - \marcato
                        [
                        ]
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        r4
                        d'2.
                        - \tenuto
                        - \marcato
                        r4
                        g'''4
                        - \tenuto
                        - \marcato
                    }
                    \times 2/3
                    {
                        \slurDashed
                        r4
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \ottava 1
                        g'''16
                        [
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        fs''''16
                        )
                        ]
                        \ottava 0
                        \slurSolid
                    }
                    \times 2/3
                    {
                        r2
                        e''4
                        - \staccato
                        - \marcato
                    }
                    \override TupletNumber.text = \markup \italic { 6:5 }
                    \times 15/12
                    {
                        r2
                        f'2
                        - \tenuto
                        - \marcato
                    }
                    \revert TupletNumber.text
                    \times 2/3
                    {
                        \slurDashed
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        ef'16
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        (
                        c''4
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a''16
                        \f
                        )
                        \slurSolid
                    }
                    s1 * 1/3
                    s1 * 1/4
                    s1 * 2/5
                    s1 * 3/7
                    s1 * 9/4
                    s1 * 9/4
                    s1 * 3/2
                    s1 * 5/4
                    s1 * 5/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 5/4
                    s1 * 3/4
                    s1 * 1
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
                    \times 4/5
                    {
                        \slurDashed
                        r8
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f''8.
                        )
                        \slurSolid
                    }
                    \times 4/5
                    {
                        r16
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs'8
                        - \staccato
                        - \marcato
                        r8
                        ]
                    }
                    r2
                    \slurDashed
                    g4
                    (
                    r2
                    )
                    \slurSolid
                    \times 4/5
                    {
                        \slurDashed
                        r8
                        [
                        (
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        f''16
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        af''16
                        r16
                        )
                        ]
                        \slurSolid
                    }
                    \times 4/5
                    {
                        r4
                        e'4
                        - \staccato
                        - \marcato
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        d'8
                        - \staccato
                        - \marcato
                        [
                        ]
                    }
                    r4
                    f'4
                    - \tenuto
                    - \marcato
                    cs'4
                    - \tenuto
                    - \marcato
                    r2
                    \times 4/5
                    {
                        \slurDashed
                        r8.
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        ef''8
                        )
                        ]
                        \slurSolid
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-two-syntonic-comma-down  }
                        gs'2.
                        \mp
                        ^ \markup \center-align { -29 }
                        \<
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        f''2
                        ^ \markup \center-align { -14 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-two-syntonic-comma-down  }
                    bs'4
                    ^ \markup \center-align { -25 }
                    \)
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        f'2
                        ^ \markup \center-align { -31 }
                    }
                    <g g'>1.
                    ~
                    - \abjad-dashed-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \italic "XSB, approx. 3 clicks per s." \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \italic { NB }
                    - \tweak padding 3
                    \startTextSpan
                    <g g'>2.
                    ~
                    <g g'>1.
                    ~
                    <g g'>2.
                    ~
                    <g g'>1.
                    \stopTextSpan
                    \override TupletNumber.text = \markup \italic 11:10
                    \times 30/33
                    {
                        <a a'>16
                        \ffff
                        - \downbow
                        [
                        \boxed-markup "As full bows as possible" 1
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>8
                        - \upbow
                        ]
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \italic 23:20
                    \times 60/69
                    {
                        <a a'>16
                        - \downbow
                        [
                        <a a'>8
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        ]
                    }
                    \revert TupletNumber.text
                    \times 4/7
                    {
                        <a a'>8
                        - \upbow
                        <a a'>4
                        - \downbow
                        <a a'>8
                        - \upbow
                        [
                        <a a'>8
                        - \downbow
                        ]
                        <a a'>4
                        - \upbow
                        <a a'>8
                        - \downbow
                        [
                        <a a'>8
                        - \upbow
                        ]
                        <a a'>4
                        - \downbow
                        <a a'>4
                        - \upbow
                        <a a'>8
                        - \downbow
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        <a a'>16
                        - \upbow
                        [
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>8
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>16
                        - \upbow
                        <a a'>16
                        - \downbow
                        <a a'>8
                        - \upbow
                        <a a'>8
                        - \downbow
                        ]
                    }
                    r2
                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                        {
                            \context Score = "Score"
                            \with
                            {
                                \override SpacingSpanner.spacing-increment = 0.5
                                proportionalNotationDuration = ##f
                            }
                            <<
                                \context RhythmicStaff = "Rhythmic_Staff"
                                \with
                                {
                                    \remove Time_signature_engraver
                                    \remove Staff_symbol_engraver
                                    \override Stem.direction = #up
                                    \override Stem.length = 5
                                    \override TupletBracket.bracket-visibility = ##t
                                    \override TupletBracket.direction = #up
                                    \override TupletBracket.minimum-length = 4
                                    \override TupletBracket.padding = 1.25
                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                    \override TupletNumber.font-size = 0
                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                    tupletFullLength = ##t
                                }
                                {
                                    c'\breve
                                    ~
                                    c'2
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 1/1
                    {
                        \slurDashed
                        \set suggestAccidentals = ##t
                        \once \override Beam.grow-direction = #right
                        <g g'>32 * 63/16
                        \mp
                        \<
                        [
                        (
                        \glissando
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { NB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 15
                        \startTextSpan
                        <g gqf'>32 * 125/32
                        \glissando
                        <g g'>32 * 31/8
                        \glissando
                        <g gqf'>32 * 61/16
                        \glissando
                        <g gqs'>32 * 119/32
                        \glissando
                        <g g'>32 * 115/32
                        \glissando
                        <g gqs'>32 * 111/32
                        \glissando
                        <g fs'>32 * 107/32
                        \glissando
                        <g gqs'>32 * 51/16
                        \glissando
                        <g fs'>32 * 49/16
                        \glissando
                        <g af'>32 * 93/32
                        \glissando
                        <g fs'>32 * 89/32
                        \glissando
                        <g aqf'>32 * 85/32
                        \glissando
                        <g fqs'>32 * 81/32
                        \glissando
                        <g aqf'>32 * 77/32
                        \glissando
                        <g fqs'>32 * 37/16
                        \glissando
                        <g a'>32 * 71/32
                        \glissando
                        <g f'>32 * 17/8
                        \glissando
                        <g aqs'>32 * 65/32
                        \glissando
                        <g eqs'>32 * 63/32
                        \glissando
                        <g bf'>32 * 61/32
                        \glissando
                        <g e'>32 * 59/32
                        \ffff
                        \stopTextSpan
                        \glissando
                        <g b'>32 * 57/32
                        \glissando
                        <g eqs'>32 * 7/4
                        \glissando
                        <g c''>32 * 27/16
                        \glissando
                        <g ef'>32 * 53/32
                        \glissando
                        <g cs''>32 * 13/8
                        \glissando
                        <g dqs'>32 * 13/8
                        \glissando
                        <g ef''>32 * 51/32
                        \glissando
                        <g dqs'>32 * 51/32
                        \glissando
                        <g f''>32 * 25/16
                        \glissando
                        <g dqs'>32 * 49/32
                        )
                        ]
                        \slurSolid
                        \set suggestAccidentals = ##f
                    }
                    \revert TupletNumber.text
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
                    \times 4/7
                    {
                        \slurDashed
                        r16
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        ]
                        r4
                        )
                        \slurSolid
                    }
                    \times 4/7
                    {
                        r4.
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        cs''16
                        - \staccato
                        - \marcato
                        [
                        ]
                    }
                    \override TupletNumber.text = \markup \italic { 7:10 }
                    \times 30/21
                    {
                        r4.
                        \slurDashed
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        ef'8
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        ^ \<
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af'8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs'8
                        ^ \f
                        )
                        \slurSolid
                        r8
                    }
                    \revert TupletNumber.text
                    \times 4/7
                    {
                        \slurDashed
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        e'16
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        ^ \<
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af'8.
                        r8.
                    }
                    \times 4/7
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \ottava 1
                        ef'''8
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        cs''''8
                        ^ \f
                        )
                        ]
                        \ottava 0
                        \slurSolid
                        r2
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        af8
                        - \staccato
                        - \marcato
                        [
                        ]
                    }
                    \override TupletNumber.text = \markup \italic { 7:10 }
                    \times 30/21
                    {
                        r2
                        r8
                        ef'4
                        - \tenuto
                        - \marcato
                    }
                    \revert TupletNumber.text
                    \times 4/7
                    {
                        \slurDashed
                        r8.
                        [
                        (
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        fs''16
                        r8
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        ef'''16
                        )
                        ]
                        \slurSolid
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        b2
                        ^ \markup \center-align { -14 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                    g'4
                    ^ \markup \center-align { +18 }
                    \)
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        ds'2
                        ^ \markup \center-align { -10 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        g2.
                        ^ \markup \center-align { +0 }
                    }
                    s1 * 9/4
                    s1 * 9/4
                    s1 * 3/2
                    s1 * 5/4
                    s1 * 5/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 5/4
                    s1 * 3/4
                    s1 * 1
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
