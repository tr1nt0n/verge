\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 6/8
            s1 * 3/4
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    r8
                    r8
                    r8
                    \slurDashed
                    ef'4
                    (
                    f'8
                    )
                    \slurSolid
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        \slurDashed
                        a'4
                        (
                        fs'4
                        )
                        \slurSolid
                        r2.
                    }
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        r8
                        r8
                        r4
                        d'4
                        r8
                    }
                }
            }
        >>
    >>
}
