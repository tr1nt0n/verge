\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % COMMANDS:
            \bar "|."
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context GrandStaff = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context Staff = "violin 1 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 1 voice"
                {
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 2 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 2 voice"
                {
                    \tweak style #'cross
                    d'4
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "NB, 1/2 CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'8.
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    d'4
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    ~
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'16
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d''8.
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    \tweak style #'cross
                    d''4
                    \tweak style #'cross
                    fs'4
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    fs'8
                    % AFTER:
                    % START_BEAM:
                    [
                    % COMMANDS:
                    \boxed-markup "1/2 CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    d'8
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    d'8
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % STOP_BEAM:
                    ]
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    g'2.
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    g'8
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    \glissando
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'harmonic-mixed
                    b8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    b4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    \tweak style #'cross
                    b4
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'harmonic-mixed
                    b8
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    g8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    \tweak style #'cross
                    g2.
                    \tweak style #'cross
                    g2.
                    % AFTER:
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    af''8..
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''32
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    ~
                    \tweak style #'cross
                    e''32
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''16.
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''8
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "CLT" 1
                    % OPENING:
                    % COMMANDS:
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''16
                    % AFTER:
                    % START_BEAM:
                    [
                    \tweak style #'harmonic-mixed
                    a''16
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % SPANNER_STARTS:
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'harmonic-mixed
                    a''16
                    % OPENING:
                    % COMMANDS:
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'cross
                    e''16
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    \glissando
                    ~
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \override Staff.Stem.stemlet-length = 0.75
                    \tweak style #'cross
                    e''8..
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPENING:
                    % COMMANDS:
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    \revert Staff.Stem.stemlet-length
                    \tweak style #'harmonic-mixed
                    b'''32
                    % AFTER:
                    % ARTICULATIONS:
                    \ppp
                    % STOP_BEAM:
                    ]
                    % COMMANDS:
                    - \baca-circle-markup
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 3 staff"
            {
                % OPEN_BRACKETS:
                \context Staff = "violin 3 voice"
                {
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
}
