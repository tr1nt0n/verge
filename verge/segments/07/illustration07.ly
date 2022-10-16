\version "2.20.0"
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
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
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
            \time 1/4
            s1 * 1/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/3
            s1 * 1/3
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 3/7
            s1 * 3/7
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % AFTER:
            % COMMANDS:
            \bar ".|:"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \tempo 4=77
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % MARKUP:
            - \markup \abs-fontsize #12 { X5 }
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
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
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % COMMANDS:
            \bar ":|."
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % AFTER:
            % COMMANDS:
            \bar "||"
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
                \context Voice = "violin 1 voice"
                {
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        \staff-line-count 5
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        r4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        % COMMANDS:
                        \boxed-markup "NB" 1
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        ef'''16
                        % AFTER:
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        r4
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        fs'''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % START_BEAM:
                        [
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        r4
                        d'2.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \tenuto
                        r4
                        g'''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \tenuto
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        g'''16
                        % AFTER:
                        % START_BEAM:
                        [
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        fs''''16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        \ottava 0
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        r2
                        e''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic { 6:5 }
                    % OPEN_BRACKETS:
                    \times 15/12
                    {
                        r2
                        f'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \tenuto
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        ef'16
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        c''4
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        a''16
                        % AFTER:
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
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
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 2 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "violin 2 voice"
                {
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        f''8.
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        r16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        r8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    r2
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \slurDashed
                    g4
                    % AFTER:
                    % SPANNER_STARTS:
                    (
                    r2
                    % AFTER:
                    % SPANNER_STOPS:
                    )
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \slurSolid
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        f''16
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        af''16
                        r16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        r4
                        e'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % START_BEAM:
                        [
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    r4
                    f'4
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \tenuto
                    cs'4
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \tenuto
                    r2
                    % AFTER:
                    % START_BEAM:
                    [
                    % OPEN_BRACKETS:
                    \times 4/5
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        ef''8
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-two-syntonic-comma-down  }
                        gs'2.
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % MARKUP:
                        ^ \markup \center-align { -29 }
                        % SPANNER_STARTS:
                        \<
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \natural-one-syntonic-comma-up  }
                        f''2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -14 }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \sharp-two-syntonic-comma-down  }
                    bs'4
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { -25 }
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-down  }
                        f'2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -31 }
                    % CLOSE_BRACKETS:
                    }
                    <g g'>1.
                    % AFTER:
                    % SPANNER_STARTS:
                    - \tweak padding #3
                    - \abjad-dashed-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { \italic "XSB, approx. 3 clicks per s." \hspace #0.5 }
                    - \tweak bound-details.right.text \markup \italic { NB }
                    \startTextSpan
                    ~
                    <g g'>2.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    <g g'>1.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    <g g'>2.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    <g g'>1.
                    % AFTER:
                    % SPANNER_STOPS:
                    \stopTextSpan
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic 11:10
                    % OPEN_BRACKETS:
                    \times 30/33
                    {
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        \ffff
                        % START_BEAM:
                        [
                        % COMMANDS:
                        \boxed-markup "As full bows as possible" 1
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic 23:20
                    % OPEN_BRACKETS:
                    \times 60/69
                    {
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % START_BEAM:
                        [
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        % START_BEAM:
                        [
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % STOP_BEAM:
                        ]
                        <a a'>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % START_BEAM:
                        [
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        % STOP_BEAM:
                        ]
                        <a a'>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        % START_BEAM:
                        [
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>16
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \upbow
                        <a a'>8
                        % AFTER:
                        % ARTICULATIONS:
                        - \downbow
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    r2
                    % BEFORE:
                    % GROB_OVERRIDES:
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
                    % OPEN_BRACKETS:
                    \times 1/1
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \set suggestAccidentals = ##t
                        \slurDashed
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \once \override Beam.grow-direction = #right
                        <g g'>32 * 63/16
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        - \tweak padding #15
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { NB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        \startTextSpan
                        \<
                        \glissando
                        <g gqf'>32 * 125/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g g'>32 * 31/8
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g gqf'>32 * 61/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g gqs'>32 * 119/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g g'>32 * 115/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g gqs'>32 * 111/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g fs'>32 * 107/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g gqs'>32 * 51/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g fs'>32 * 49/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g af'>32 * 93/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g fs'>32 * 89/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g aqf'>32 * 85/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g fqs'>32 * 81/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g aqf'>32 * 77/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g fqs'>32 * 37/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g a'>32 * 71/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g f'>32 * 17/8
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g aqs'>32 * 65/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g eqs'>32 * 63/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g bf'>32 * 61/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g e'>32 * 59/32
                        % AFTER:
                        % ARTICULATIONS:
                        \ffff
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % SPANNER_STARTS:
                        \glissando
                        <g b'>32 * 57/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g eqs'>32 * 7/4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g c''>32 * 27/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g ef'>32 * 53/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g cs''>32 * 13/8
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g dqs'>32 * 13/8
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g ef''>32 * 51/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g dqs'>32 * 51/32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g f''>32 * 25/16
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        <g dqs'>32 * 49/32
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \set suggestAccidentals = ##f
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "violin 3 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "violin 3 voice"
                {
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        a'8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        r4.
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        cs''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % START_BEAM:
                        [
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic { 7:10 }
                    % OPEN_BRACKETS:
                    \times 30/21
                    {
                        r4.
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        ef'8
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        ^ \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af'8
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        cs'8
                        % AFTER:
                        % ARTICULATIONS:
                        ^ \f
                        % SPANNER_STOPS:
                        )
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                        r8
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        e'16
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        ^ \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        af'8.
                        r8.
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        ef'''8
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        cs''''8
                        % AFTER:
                        % ARTICULATIONS:
                        ^ \f
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        \ottava 0
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                        r2
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 1
                        af8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \staccato
                        % START_BEAM:
                        [
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic { 7:10 }
                    % OPEN_BRACKETS:
                    \times 30/21
                    {
                        r2
                        r8
                        ef'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        - \tenuto
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \slurDashed
                        r8.
                        % AFTER:
                        % START_BEAM:
                        [
                        [
                        % SPANNER_STARTS:
                        (
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        fs''16
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        ef'''16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                        % STOP_BEAM:
                        ]
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \slurSolid
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                        b2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -14 }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-up  }
                    g'4
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { +18 }
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \sharp-one-syntonic-comma-down  }
                        ds'2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { -10 }
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        g2.
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { +0 }
                    % CLOSE_BRACKETS:
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
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
}
