    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=60
            \time 7/4
            s1 * 7/4
            \time 6/4
            s1 * 3/2
            \time 5/4
            s1 * 5/4
            \tempo 4=130
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-4 \abs-fontsize #8.5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/2
            s1 * 1/2
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            #(ly:expect-warning "strange time signature found")
            \time 5/7
            s1 * 5/7
            \tempo 4=69
            \time 1/4
            s1 * 1/4
            \stopTextSpan
            \time 3/4
            s1 * 3/4
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \tempo 4=47
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 3/4
            s1 * 3/4
            \tempo 4=60
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
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
            \time 5/7
            s1 * 5/7
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
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 5/7
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 5/4
                    s1 * 7/4
                    s1 * 1/4
                    s1 * 3/2
                    \override TupletNumber.text = \markup \italic 49:48
                    \times 48/49
                    {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \>
                        [
                        \(
                        \boxed-markup "Crine" 1
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \italic 17:16
                    \times 48/51
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \italic 9:8
                    \times 16/18
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \italic 49:48
                    \times 48/49
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                    }
                    \revert TupletNumber.text
                    \override TupletNumber.text = \markup \italic 19:16
                    \times 16/19
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \mp
                        \>
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \)
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        \pp
                        \<
                        \(
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        \p
                        \)
                        ]
                    }
                    \revert TupletNumber.text
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 5/7
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
                    \staff-line-count 5
                    \clef "treble"
                    f'16..
                    \p
                    \<
                    [
                    \(
                    \boxed-markup "Ord." 1
                    d''64
                    ~
                    d''16
                    ~
                    d''64
                    \)
                    g'''32.
                    \fp
                    - \tenuto
                    ~
                    ]
                    g16
                    \ff
                    - \marcato
                    - \staccato
                    [
                    cs'16
                    \mp
                    - \marcato
                    - \staccato
                    g16..
                    \f
                    - \marcato
                    - \staccato
                    a'64
                    \fp
                    - \tweak circled-tip ##t
                    - \tweak stencil #abjad-flared-hairpin
                    \>
                    ~
                    ]
                    \(
                    a'16
                    ~
                    [
                    a'64
                    af'32.
                    ~
                    af'16
                    \)
                    a16
                    \f
                    - \marcato
                    - \staccato
                    ]
                    fs'2.
                    \p
                    \<
                    ~
                    fs'8
                    [
                    g'''8
                    \mp
                    - \tweak circled-tip ##t
                    \>
                    ]
                    \(
                    cs'''1.
                    \)
                    f''4
                    \p
                    - \tweak circled-tip ##t
                    \>
                    ~
                    \(
                    f''8.
                    [
                    g'16
                    - \tenuto
                    ~
                    ]
                    g'4
                    g'8..
                    - \tenuto
                    \)
                    [
                    d'32
                    \<
                    ]
                    \(
                    a'16..
                    [
                    ef''64
                    f''32..
                    \f
                    \)
                    d'128
                    \mp
                    ~
                    d'32
                    ~
                    d'128
                    fs'''64.
                    \ff
                    - \marcato
                    - \staccato
                    ]
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        g'1
                        \mp
                        ^ \markup \center-align +37
                        ~
                        g'4
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    b'2
                    ^ \markup \center-align { -14 }
                    \(
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        af'2
                        ^ \markup \center-align { -41 }
                        \)
                    }
                    \times 8/13
                    {
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        \<
                        [
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        g'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        b32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        c'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        d''32
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        b32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        g32
                        - \baca-circle-markup
                    }
                    \tweak style #'cross
                    g8
                    - \baca-circle-markup
                    \tweak style #'cross
                    g8
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    g'4.
                    \mf
                    - \tweak stencil #abjad-flared-hairpin
                    \>
                    \glissando
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'harmonic-mixed
                    b8
                    [
                    - \baca-circle-markup
                    \times 4/7
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        \p
                        ]
                        - \baca-circle-markup
                        \tweak style #'cross
                        a'4.
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        \p
                        ]
                        - \baca-circle-markup
                        \tweak style #'cross
                        d''4
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                    }
                    \times 8/13
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \tweak circled-tip ##t
                        \<
                        [
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        e'''32
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        cs''32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        a''32
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        cs''32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        \tweak style #'harmonic-mixed
                        d''32
                        ]
                        - \baca-circle-markup
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        \tweak style #'cross
                        a'4
                        \f
                        \glissando
                        - \baca-circle-markup
                        \tweak style #'cross
                        e'''4
                        \glissando
                        - \baca-circle-markup
                        \tweak style #'cross
                        cs''2.
                        \glissando
                        - \baca-circle-markup
                        \tweak style #'cross
                        a'4
                        - \baca-circle-markup
                    }
                    \times 4/7
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        a'16
                        \p
                        [
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8.
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        a'16
                        \p
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''8
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                        \boxed-markup "1/2 CLT" 1
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        cs''8
                        - \tweak circled-tip ##t
                        \<
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        d''8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        e'''8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        cs''8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''8
                        - \baca-circle-markup
                    }
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        \f
                        \glissando
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''16
                        \p
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        fs'8.
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'16
                        \p
                        - \baca-circle-markup
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'8
                        ]
                        - \baca-circle-markup
                        \tweak style #'cross
                        d'4.
                        \fp
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'8
                        - \tweak circled-tip ##t
                        \<
                        \glissando
                        - \baca-circle-markup
                        \tweak style #'cross
                        d''4
                        \glissando
                        - \baca-circle-markup
                    }
                    \times 8/13
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        [
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        g'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        a''16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        d''16
                        - \baca-circle-markup
                    }
                    \times 2/3
                    {
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'16
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'8.
                        - \baca-circle-markup
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \tweak style #'cross
                        d'16
                        ]
                        - \baca-circle-markup
                    }
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
                    >2.
                    \f
                    ~
                    \glissando
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    <
                        \tweak style #'harmonic-mixed
                        g
                        \tweak style #'harmonic-mixed
                        d'
                        \tweak style #'harmonic-mixed
                        a'
                        \tweak style #'harmonic-mixed
                        e''
                    >2
                    ~
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
                    \ottava 1
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        fs'''
                        \tweak style #'harmonic-mixed
                        cs''''
                        \tweak style #'harmonic-mixed
                        af''''
                        \tweak style #'harmonic-mixed
                        ef'''''
                    >1.
                    \glissando
                    \ottava 0
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    [
                    \glissando
                    \ottava 1
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    \glissando
                    \ottava 0
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        fs'
                        \tweak style #'harmonic-mixed
                        cs''
                        \tweak style #'harmonic-mixed
                        af''
                        \tweak style #'harmonic-mixed
                        ef'''
                    >32
                    \glissando
                    \ottava 1
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        g
                        \tweak style #'harmonic-mixed
                        d'
                        \tweak style #'harmonic-mixed
                        a'
                        \tweak style #'harmonic-mixed
                        e''
                    >8
                    \glissando
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        b
                        \tweak style #'harmonic-mixed
                        fs'
                        \tweak style #'harmonic-mixed
                        cs''
                        \tweak style #'harmonic-mixed
                        af''
                    >8
                    ]
                    \glissando
                    \ottava 1
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        fs'''
                        \tweak style #'harmonic-mixed
                        cs''''
                        \tweak style #'harmonic-mixed
                        af''''
                        \tweak style #'harmonic-mixed
                        ef'''''
                    >2
                    ~
                    \glissando
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    <
                        \tweak style #'harmonic-mixed
                        fs'''
                        \tweak style #'harmonic-mixed
                        cs''''
                        \tweak style #'harmonic-mixed
                        af''''
                        \tweak style #'harmonic-mixed
                        ef'''''
                    >2.
                    ~
                    <
                        \tweak style #'harmonic-mixed
                        fs'''
                        \tweak style #'harmonic-mixed
                        cs''''
                        \tweak style #'harmonic-mixed
                        af''''
                        \tweak style #'harmonic-mixed
                        ef'''''
                    >4
                    \ottava 0
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        g
                        \tweak style #'harmonic-mixed
                        d'
                        \tweak style #'harmonic-mixed
                        a'
                        \tweak style #'harmonic-mixed
                        e''
                    >8
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
                    <
                        \tweak style #'harmonic-mixed
                        cs'
                        \tweak style #'harmonic-mixed
                        af'
                        \tweak style #'harmonic-mixed
                        ef''
                        \tweak style #'harmonic-mixed
                        bf''
                    >8
                    \glissando
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    \ottava 1
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        bf
                        \tweak style #'harmonic-mixed
                        f'
                        \tweak style #'harmonic-mixed
                        c''
                        \tweak style #'harmonic-mixed
                        g''
                    >8
                    \glissando
                    \ottava 1
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
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
                    \ottava 0
                    \set suggestAccidentals = ##f
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak style #'triangle
                        eqf'''2
                        - \tenuto
                        - \tweak circled-tip ##t
                        \<
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { {I} \hspace #0.5 }
                        - \tweak padding 12.5
                        \startTextSpan
                        \boxed-markup "XSB" 1
                    }
                    \tweak style #'triangle
                    gqs''2
                    - \tenuto
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak style #'triangle
                        eqf'''1
                        - \tenuto
                        ~
                        \tweak style #'triangle
                        eqf'''4
                        \fff
                        \stopTextSpan
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
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        b2
                        ^ \markup \center-align { +4 }
                        \(
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    d'2
                    ^ \markup \center-align { +2 }
                    \)
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        bf1
                        ^ \markup \center-align { -10 }
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        bf4
                    }
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 5/4
                    s1 * 7/4
                    s1 * 1/4
                    s1 * 3/2
                    s1 * 3/2
                    s1 * 3/2
                    s1 * 1/2
                    s1 * 3/2
                    s1 * 1/2
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 5/7
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    \once \override MultiMeasureRest.transparent = ##t
                    R1 * 1/4
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    \stopStaff \startStaff
                }
            }
        >>
    >>
