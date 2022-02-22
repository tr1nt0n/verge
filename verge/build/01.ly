    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=77
            \time 5/4
            s1 * 5/4
            \time 5/4
            s1 * 5/4
            \tempo 4=69
            \time 3/4
            s1 * 3/4
            \tempo 4=47
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 1/4
            s1 * 1/4
            \tempo 4=105
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \time 1/2
            s1 * 1/2
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \break
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/5
            s1 * 1/5
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            s1 * 1/4
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
                    s2.
                    s2
                    s2.
                    s2
                    \slurDashed
                    ef'4
                    (
                    r4
                    f'4
                    )
                    \slurSolid
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 1/5
                    s1 * 1/4
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
                    \override TupletNumber.text = \markup \italic 11:10
                    \times 30/33
                    {
                        <a a'>16
                        \fff
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
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        r4
                        \mp
                        \<
                        \slurDashed
                        a'2.
                        \mf
                        - \tweak circled-tip ##t
                        \>
                        (
                        fs'4
                        \!
                        )
                        \slurSolid
                    }
                    r8
                    \tweak style #'triangle
                    bqf8
                    \ff
                    - \tenuto
                    ~
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    - \tweak padding 8
                    \startTextSpan
                    \boxed-markup "XSB" 1
                    \tweak style #'triangle
                    bqf4
                    r4
                    \stopTextSpan
                    \staff-line-count 4
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    g8
                    - \marcato
                    [
                    \tweak padding 5
                    \boxed-markup "DP, wrapping" 1
                    r16
                    \staff-line-count 5
                    \clef "treble"
                    \tweak style #'triangle
                    gqf'16
                    - \tenuto
                    ~
                    ]
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    - \tweak padding 15.5
                    \startTextSpan
                    \tweak padding 5
                    \boxed-markup "Ord." 1
                    \tweak style #'triangle
                    gqf'4
                    ~
                    \tweak style #'triangle
                    gqf'2.
                    r4
                    \tweak style #'triangle
                    bqs4
                    - \tenuto
                    ~
                    \tweak style #'triangle
                    bqs4
                    \staff-line-count 4
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    bf32
                    - \marcato
                    \stopTextSpan
                    [
                    \tweak padding 5
                    \boxed-markup "DP, wrapping" 1
                    \tweak Accidental.transparent ##t
                    g32
                    - \marcato
                    r16
                    r16
                    \tweak Accidental.transparent ##t
                    bf32
                    - \marcato
                    \tweak Accidental.transparent ##t
                    f'32
                    - \marcato
                    r16
                    \staff-line-count 5
                    \clef "treble"
                    \tweak style #'triangle
                    dqf'8.
                    - \tenuto
                    ]
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { {IV} \hspace #0.5 }
                    - \tweak padding 12
                    \startTextSpan
                    \tweak padding 5
                    \boxed-markup "Ord." 1
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'4
                    \mp
                    ^ \markup \center-align { -16 }
                    \stopTextSpan
                    \(
                    \boxed-markup "NB" 1
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef''4
                        ^ \markup \center-align { -35 }
                        \)
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        bs'2
                        ^ \markup \center-align { -4 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \one-septimal-comma-down  }
                    a'2
                    ^ \markup \center-align { -23 }
                    \)
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
                    s2.
                    s2
                    s2.
                    s2
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r4.
                        d''2
                    }
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 1/4
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    a2
                    ^ \markup \center-align { +0 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        f'2
                        ^ \markup \center-align { -4 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        ds'4
                        ^ \markup \center-align { +12 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    b4
                    ^ \markup \center-align { +8 }
                    \)
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
