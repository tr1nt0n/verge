    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 4=60
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
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/5
            s1 * 2/5
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-4 \abs-fontsize #8.5 { Rit. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/2
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 5/7
            s1 * 5/7
            % BEFORE:
            % COMMANDS:
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
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
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
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
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = #(blank-time-signature)
            \tempo 4=60
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
            \time 1/2
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.stencil = ##f
            \once \override Score.SpanBar.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 5/7
            s1 * 5/7
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
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 48/49
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \(
                        \>
                        % COMMANDS:
                        \boxed-markup "Crine" 1
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 48/51
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % GROB_OVERRIDES:
                    \override TupletNumber.text = \markup \italic 9:8
                    % OPEN_BRACKETS:
                    \times 16/18
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                    % CLOSE_BRACKETS:
                    }
                    % AFTER:
                    % GROB_REVERTS:
                    \revert TupletNumber.text
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 48/49
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 16/19
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % SPANNER_STARTS:
                        \(
                        \>
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % SPANNER_STOPS:
                        \)
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        g32
                        % AFTER:
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        \(
                        \<
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        bf32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        d'32
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        % OPENING:
                        % COMMANDS:
                        \abjad-color-music #'DarkRed
                        \tweak Accidental.transparent ##t
                        f'32
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % SPANNER_STOPS:
                        \)
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    s1 * 2/5
                    s1 * 1/2
                    s1 * 5/7
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
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
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \staff-line-count 5
                    % OPENING:
                    % COMMANDS:
                    \clef "treble"
                    f'16..
                    % AFTER:
                    % ARTICULATIONS:
                    \p
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    \(
                    \<
                    % COMMANDS:
                    \boxed-markup "Ord." 1
                    d''64
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    d''16
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    d''64
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    g'''32.
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    \fp
                    % STOP_BEAM:
                    ]
                    g16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    \ff
                    % START_BEAM:
                    [
                    cs'16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    \mp
                    g16..
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    \f
                    a'64
                    % AFTER:
                    % ARTICULATIONS:
                    \fp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    - \tweak circled-tip ##t
                    - \tweak stencil #abjad-flared-hairpin
                    \>
                    \(
                    ~
                    a'16
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    ~
                    a'64
                    af'32.
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    af'16
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    a16
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    \f
                    % STOP_BEAM:
                    ]
                    fs'2.
                    % AFTER:
                    % ARTICULATIONS:
                    \p
                    % SPANNER_STARTS:
                    \<
                    ~
                    fs'8
                    % AFTER:
                    % START_BEAM:
                    [
                    g'''8
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    - \tweak circled-tip ##t
                    \>
                    \(
                    cs'''1.
                    % AFTER:
                    % SPANNER_STOPS:
                    \)
                    f''4
                    % AFTER:
                    % ARTICULATIONS:
                    \p
                    % SPANNER_STARTS:
                    - \tweak circled-tip ##t
                    \>
                    \(
                    ~
                    f''8.
                    % AFTER:
                    % START_BEAM:
                    [
                    g'16
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    ~
                    g'4
                    g'8..
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % SPANNER_STOPS:
                    \)
                    % START_BEAM:
                    [
                    d'32
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    \(
                    \<
                    a'16..
                    % AFTER:
                    % START_BEAM:
                    [
                    ef''64
                    f''32..
                    % AFTER:
                    % ARTICULATIONS:
                    \f
                    % SPANNER_STOPS:
                    \)
                    d'128
                    % AFTER:
                    % ARTICULATIONS:
                    \mp
                    % SPANNER_STARTS:
                    ~
                    d'32
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    d'128
                    fs'''64.
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    - \staccato
                    \ff
                    % STOP_BEAM:
                    ]
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        g'!1
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        % MARKUP:
                        ^ \markup \center-align +37
                        % SPANNER_STARTS:
                        ~
                        g'!4
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \natural-one-syntonic-comma-down  }
                    b'!2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { \concat { -14 } }
                    % SPANNER_STARTS:
                    \(
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-down \hspace #0.125 \abjad-flat  }
                        af'!2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { -41 } }
                        % SPANNER_STOPS:
                        \)
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 8/13
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \<
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        g'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        b32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        c'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        d''32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        b32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        g32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 1
                    \tweak style #'cross
                    g8
                    % AFTER:
                    % COMMANDS:
                    - \baca-circle-markup
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 1
                    \set stemRightBeamCount = 0
                    \tweak style #'cross
                    g8
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % COMMANDS:
                    - \baca-circle-markup
                    \tweak style #'cross
                    g'4.
                    % AFTER:
                    % ARTICULATIONS:
                    \mf
                    % SPANNER_STARTS:
                    - \tweak stencil #abjad-flared-hairpin
                    \>
                    \glissando
                    % COMMANDS:
                    - \baca-circle-markup
                    \boxed-markup "1/2 CLT" 1
                    % BEFORE:
                    % COMMANDS:
                    \set stemLeftBeamCount = 0
                    \set stemRightBeamCount = 1
                    \tweak style #'harmonic-mixed
                    b8
                    % AFTER:
                    % START_BEAM:
                    [
                    % COMMANDS:
                    - \baca-circle-markup
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        a'4.
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        d''4
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 8/13
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        e'''32
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        cs''32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        a''32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'harmonic-mixed
                        cs''32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 3
                        \tweak style #'cross
                        a'32
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 3
                        \set stemRightBeamCount = 0
                        \tweak style #'harmonic-mixed
                        d''32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/6
                    {
                        \tweak style #'cross
                        a'4
                        % AFTER:
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        e'''4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        cs''2.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        a'4
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 4/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        a'16
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % START_BEAM:
                        [
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8.
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        a'16
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''8
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "1/2 CLT" 1
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 12/13
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        cs''8
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        d''8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        e'''8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        cs''8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        a'8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''8
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'harmonic-mixed
                        a''16
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        fs'8.
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                        \boxed-markup "CLT" 1
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        \p
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 0
                        \tweak style #'cross
                        d'8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        d'4.
                        % AFTER:
                        % ARTICULATIONS:
                        \fp
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'8
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                        \tweak style #'cross
                        d''4
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 8/13
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 0
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        % AFTER:
                        % START_BEAM:
                        [
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        g'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        a''16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        d''16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 2
                        \tweak style #'harmonic-mixed
                        fs'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 1
                        \set stemRightBeamCount = 1
                        \tweak style #'cross
                        d'8.
                        % AFTER:
                        % COMMANDS:
                        - \baca-circle-markup
                        % BEFORE:
                        % COMMANDS:
                        \set stemLeftBeamCount = 2
                        \set stemRightBeamCount = 0
                        \tweak style #'cross
                        d'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        - \baca-circle-markup
                    % CLOSE_BRACKETS:
                    }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:
                    \set suggestAccidentals = ##t
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >2.
                    % AFTER:
                    % ARTICULATIONS:
                    \f
                    % SPANNER_STARTS:
                    \glissando
                    ~
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >2
                    % AFTER:
                    % SPANNER_STARTS:
                    ~
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >4
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
                    % OPENING:
                    % COMMANDS:
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    \ottava 0
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
                    % AFTER:
                    % START_BEAM:
                    [
                    % SPANNER_STARTS:
                    \glissando
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    \ottava 0
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    \ottava 0
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
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >8
                    % AFTER:
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
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % SPANNER_STARTS:
                    \glissando
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
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
                    % AFTER:
                    % SPANNER_STARTS:
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
                    % AFTER:
                    % COMMANDS:
                    \ottava 0
                    % OPENING:
                    % COMMANDS:
                    \revert Accidental.stencil
                    \revert NoteColumn.glissando-skip
                    \revert NoteHead.no-ledgers
                    \undo \hide NoteHead
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >8
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
                    % AFTER:
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
                    <
                        \tweak style #'harmonic-mixed
                        gqs
                        \tweak style #'harmonic-mixed
                        dqs'
                        \tweak style #'harmonic-mixed
                        aqs'
                        \tweak style #'harmonic-mixed
                        eqs''
                    >32
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % COMMANDS:
                    \ottava 0
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
                    % AFTER:
                    % SPANNER_STARTS:
                    \glissando
                    % BEFORE:
                    % COMMANDS:
                    \ottava 1
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
                    % AFTER:
                    % STOP_BEAM:
                    ]
                    % COMMANDS:
                    \ottava 0
                    % ABSOLUTE_AFTER:
                    % COMMANDS:
                    \set suggestAccidentals = ##f
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak style #'triangle
                        eqf'''2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #12.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { {I} \hspace #0.5 }
                        \startTextSpan
                        % COMMANDS:
                        \boxed-markup "XSB" 1
                    % CLOSE_BRACKETS:
                    }
                    \tweak style #'triangle
                    gqs''2
                    % AFTER:
                    % ARTICULATIONS:
                    - \tenuto
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak style #'triangle
                        eqf'''1
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'triangle
                        eqf'''4
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        % SPANNER_STOPS:
                        \stopTextSpan
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
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
                    s1 * 7/4
                    s1 * 3/2
                    s1 * 3/4
                    s1 * 1/2
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-natural  }
                        b!2
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { +4 } }
                        % SPANNER_STARTS:
                        \(
                    % CLOSE_BRACKETS:
                    }
                    \tweak Accidental.stencil #ly:text-interface::print
                    \tweak Accidental.text \markup { \abjad-natural  }
                    d'!2
                    % AFTER:
                    % MARKUP:
                    ^ \markup \center-align { \concat { +2 } }
                    % SPANNER_STOPS:
                    \)
                    % OPEN_BRACKETS:
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/7
                    {
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        bf!1
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \concat { -10 } }
                        % SPANNER_STARTS:
                        ~
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \abjad-flat  }
                        bf!4
                    % CLOSE_BRACKETS:
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
                    % BEFORE:
                    % COMMANDS:
                    \once \override MultiMeasureRest.transparent = ##t
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                    R1 * 1/4
                    % AFTER:
                    % MARKUP:
                    - \markup \huge { \musicglyph "scripts.ufermata" }
                    % COMMANDS:
                    \once \override Score.BarLine.transparent = ##f
                    \stopStaff \startStaff
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
