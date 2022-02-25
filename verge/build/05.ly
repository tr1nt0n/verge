    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=69
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            #(ly:expect-warning "strange time signature found")
            \time 1/9
            s1 * 1/9
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-2.5 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 5/8
            s1 * 5/8
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 3/7
            s1 * 3/7
            \tempo 16=420
            \time 5/16
            s1 * 5/16
            \stopTextSpan
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
                    s1 * 1/9
                    s1 * 5/8
                    s1 * 3/7
                    s1 * 5/16
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
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/9
                    {
                        f'8
                        \pp
                        - \accent
                        - \staccato
                        \<
                    }
                    d''2
                    ~
                    \(
                    d''8
                    \ff
                    \>
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        g'''2.
                        \)
                    }
                    \staff-line-count 4
                    \clef "percussion"
                    \tweak Accidental.transparent ##t
                    bf16
                    \p
                    - \marcato
                    [
                    \boxed-markup "DP, wrapping" 1
                    \tweak Accidental.transparent ##t
                    g16
                    \f
                    - \marcato
                    \tweak Accidental.transparent ##t
                    bf16
                    - \marcato
                    r16.
                    \tweak Accidental.transparent ##t
                    f'32
                    - \marcato
                    ]
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
                    s1 * 1/9
                    s1 * 5/8
                    s1 * 3/7
                    s1 * 5/16
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
