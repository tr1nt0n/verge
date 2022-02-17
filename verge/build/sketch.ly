    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \time 1/4
            s1 * 1/4
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/5
            s1 * 1/5
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/7
            s1 * 1/7
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
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
            \time 1/15
            s1 * 1/15
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/14
            s1 * 1/14
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/2
            s1 * 1/2
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 1/7
            s1 * 1/7
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/1
            s1 * 1
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    s1 * 1/4
                    s1 * 1/6
                    s1 * 1/5
                    s1 * 1/7
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/3
                    s1 * 1/15
                    s1 * 1/14
                    s1 * 1/2
                    s1 * 1/7
                    s1 * 1
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                    fs'4
                    ^ \markup \center-align { -16 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/6
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        ef''4
                        ^ \markup \center-align { -35 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        bs'4
                        ^ \markup \center-align { -4 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        a'4
                        ^ \markup \center-align { -23 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-one-syntonic-comma-up  }
                        af'2
                        ^ \markup \center-align { +8 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                    css''2.
                    ^ \markup \center-align { +22 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \flat-two-syntonic-comma-up  }
                        af'2
                        ^ \markup \center-align { +29 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        d''8
                        ^ \markup \center-align +43
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/14
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-seventeen-limit-schisma-down \hspace #0.125 \one-septimal-comma-up \hspace #0.125 \double-sharp-one-syntonic-comma-down  }
                        fss'8
                        ^ \markup \center-align { +17 }
                    }
                    g'2
                    ^ \markup \center-align +37
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        b'4
                        ^ \markup \center-align { -14 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                    af'1
                    ^ \markup \center-align { -41 }
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    f'1
                    ^ \markup \center-align { -4 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-sharp  }
                        ds'4
                        ^ \markup \center-align { +12 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    b2
                    ^ \markup \center-align { +8 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/14
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        c'8
                        ^ \markup \center-align { -6 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 8/15
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        fs'8
                        ^ \markup \center-align { -12 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                        c'2
                        ^ \markup \center-align { +16 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-sharp  }
                    fs'2.
                    ^ \markup \center-align { +10 }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        b2
                        ^ \markup \center-align { -18 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        b4
                        ^ \markup \center-align { +4 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        d'4
                        ^ \markup \center-align { +2 }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/6
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        bf4
                        ^ \markup \center-align { -10 }
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    d'4
                    ^ \markup \center-align { +2 }
                }
            }
        >>
    >>
