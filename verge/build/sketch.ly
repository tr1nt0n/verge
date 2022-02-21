    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    \staff-line-count 4
                    \clef "percussion"
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    g16
                    [
                    \(
                    \tweak Accidental.transparent ##t
                    bf16
                    \tweak Accidental.transparent ##t
                    d'16
                    \)
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    f'16
                    ]
                    \(
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    d'16
                    [
                    \tweak Accidental.transparent ##t
                    bf16
                    \)
                    \tweak Accidental.transparent ##t
                    g16
                    \(
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    bf16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak Accidental.transparent ##t
                    d'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak Accidental.transparent ##t
                    f'16
                    \)
                    ]
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 10/11
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        \tweak Accidental.transparent ##t
                        g16
                        [
                        \(
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
                        \tweak Accidental.transparent ##t
                        g16
                        \(
                        \tweak Accidental.transparent ##t
                        bf16
                        \tweak Accidental.transparent ##t
                        d'16
                        \)
                        \tweak Accidental.transparent ##t
                        f'16
                        \(
                        \revert Staff.Stem.stemlet-length
                        \tweak Accidental.transparent ##t
                        d'16
                        \)
                        ]
                    }
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
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
                    >2
                    \glissando
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
                    \glissando
                    \ottava 0
                    \override TupletNumber.text = \markup \italic {6:5}
                    \times 15/18
                    {
                        \override Staff.Stem.stemlet-length = 0.75
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
                        [
                        \glissando
                        \ottava 1
                        \revert Staff.Stem.stemlet-length
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
                        <
                            \tweak style #'harmonic-mixed
                            fs'
                            \tweak style #'harmonic-mixed
                            cs''
                            \tweak style #'harmonic-mixed
                            af''
                            \tweak style #'harmonic-mixed
                            ef'''
                        >2
                    }
                    \revert TupletNumber.text
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    r2.
                    r2
                }
            }
        >>
    >>
