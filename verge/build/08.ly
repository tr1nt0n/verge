    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 7/4
            s1 * 7/4
            \time 6/4
            s1 * 3/2
            \time 5/4
            s1 * 5/4
            \bar "|."
            \once \override Score.BarLine.transparent = ##f
        }
        \context GrandStaff = "Staff Group"
        <<
            \context Staff = "violin 1 staff"
            {
                \context Voice = "violin 1 voice"
                {
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                }
            }
            \context Staff = "violin 2 staff"
            {
                \context Voice = "violin 2 voice"
                {
                    \tweak style #'cross
                    d'4
                    \ppp
                    ~
                    - \baca-circle-markup
                    \boxed-markup "NB, 1/2 CLT" 1
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'16
                    ~
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    d'4
                    ~
                    \glissando
                    \override Staff.Stem.stemlet-length = 0.75
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'cross
                    d'16
                    [
                    \revert Staff.Stem.stemlet-length
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    d''8.
                    \mp
                    ~
                    ]
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    d''4
                    \tweak style #'cross
                    fs'4
                    \ppp
                    ~
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    fs'8
                    [
                    \boxed-markup "1/2 CLT" 1
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'8
                    ~
                    ]
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'8
                    \mp
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    g'2.
                    \ppp
                    ~
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    g'8
                    [
                    \glissando
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
                    b8
                    ~
                    ]
                    - \baca-circle-markup
                    \tweak style #'cross
                    b4
                    ~
                    \tweak style #'cross
                    b4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    b8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    g8
                    ~
                    ]
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'cross
                    g2.
                    \tweak style #'cross
                    g2.
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    af''8..
                    \mp
                    [
                    \glissando
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \revert Staff.Stem.stemlet-length
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'cross
                    e''32
                    \ppp
                    ~
                    ]
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''8
                    ~
                    [
                    \tweak style #'cross
                    e''32
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''16.
                    \mp
                    ~
                    ]
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''8
                    [
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''8
                    \ppp
                    ~
                    ]
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''16
                    [
                    \tweak style #'harmonic-mixed
                    a''16
                    \mp
                    ~
                    - \baca-circle-markup
                    \tweak style #'harmonic-mixed
                    a''16
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''16
                    ~
                    ]
                    \glissando
                    - \baca-circle-markup
                    \override Staff.Stem.stemlet-length = 0.75
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \tweak style #'cross
                    e''8..
                    [
                    \revert Staff.Stem.stemlet-length
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \tweak style #'harmonic-mixed
                    b'''32
                    \ppp
                    ]
                    - \baca-circle-markup
                }
            }
            \context Staff = "violin 3 staff"
            {
                \context Voice = "violin 3 voice"
                {
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                }
            }
        >>
    >>
