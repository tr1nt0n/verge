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
            \time 5/4
            s1 * 5/4
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    r2.
                    r2
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'16.
                    [
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { III \hspace #0.5 }
                    - \tweak padding 6
                    \startTextSpan
                    \glissando
                    - \baca-circle-markup
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'cross
                    d'32
                    - \baca-circle-markup
                    \revert Staff.Stem.stemlet-length
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'harmonic-mixed
                    g'8
                    ~
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    g'4
                    \glissando
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    d'4
                    \glissando
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    a''8.
                    [
                    \glissando
                    - \baca-circle-markup
                    \revert Staff.Stem.stemlet-length
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'harmonic-mixed
                    fs'16
                    ~
                    ]
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    fs'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'8.
                    \stopTextSpan
                    ]
                    - \baca-circle-markup
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
}
