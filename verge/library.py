import abjad
import baca
import evans
import trinton
import verge
import random
from abjadext import rmakers
from abjadext import microtones
from random import randint

# score and voice variables

score = trinton.make_score_template(
    [
        abjad.Violin(),
        abjad.Violin(),
        abjad.Violin(),
    ],
    [
        1,
        1,
        1,
    ],
    outer_staff="GrandStaff",
)

violin_1_voice = score["violin 1 voice"]

violin_2_voice = score["violin 2 voice"]

violin_3_voice = score["violin 3 voice"]

# saved rhythms

collapsing_tuplets_1 = eval("""[(4, 1), (1, 1, 4), (1, 1, 1, 4), (1, 1, 1), (6, 1)]""")

collapsing_tuplets_2 = eval(
    """[
    (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
    (1, 1, 3, 1),
    (1, 3, 1, 2),
]"""
)

collapsing_tuplets_3 = eval(
    """[
    (1, 7),
    (1, 6),
    (1, 5),
    (1, 4),
    (1, 1, 3),
    (3, 1, 1, 1, 2, 2, 2, 2),
    (6, 1, 1),
]"""
)

# rhythm tools

_prol_to_lst = {
    7: [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        2,
        2,
        2,
        3,
        3,
        3,
        4,
        4,
        4,
        5,
        5,
        5,
        6,
        6,
        6,
    ],
    6: [
        1,
        1,
        1,
        1,
        1,
        1,
        2,
        2,
        2,
        3,
        3,
        3,
        4,
        4,
        4,
        5,
        5,
        5,
    ],
    5: [
        1,
        1,
        1,
        1,
        1,
        2,
        2,
        2,
        3,
        3,
        3,
        4,
        4,
        4,
    ],
}


def make_prolations(prolation):
    random.seed(3)
    prolations = []

    for lst in [
        trinton.all_additions(lst=_prol_to_lst[prolation], s=prolation, pair_num=_)
        for _ in list(range(2, prolation + 1))
    ]:
        random.sample(lst, k=len(lst))
        for pair in lst:
            new_pair = random.sample(pair, k=len(pair))
            prolations.append(tuple(new_pair))

    final_prolations = list(set(prolations))

    return final_prolations


def arcana_rhythms(score, voice_name, durations, index, rest_selector=None):
    _voice_to_prolation = {
        "violin 1 voice": trinton.rotated_sequence(make_prolations(6), index),
        "violin 2 voice": trinton.rotated_sequence(make_prolations(5), index),
        "violin 3 voice": trinton.rotated_sequence(make_prolations(7), index),
    }

    if rest_selector is not None:
        stack = rmakers.stack(
            rmakers.tuplet(_voice_to_prolation[voice_name]),
            rmakers.force_rest(rest_selector),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            # rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
            rmakers.beam_groups(beam_rests=True),
        )

        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice_name,
            stack=stack,
            durations=durations,
        )

    else:
        stack = rmakers.stack(
            rmakers.tuplet(_voice_to_prolation[voice_name]),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            # rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
            rmakers.beam_groups(beam_rests=True),
        )

        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice_name,
            stack=stack,
            durations=durations,
        )


def naiads_ii_rhythms(
    score, voice_names, durations, tuplets, division=16, extra_counts=[0]
):

    stack1 = rmakers.stack(
        rmakers.even_division([division], extra_counts=extra_counts),
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        # rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        rmakers.beam_groups(beam_rests=True),
    )

    stack2 = rmakers.stack(
        rmakers.tuplet(tuplets),
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        # rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        rmakers.beam_groups(beam_rests=True),
    )

    _voice_to_stack = {"violin 1 voice": stack1, "violin 2 voice": stack2}

    for voice_name in voice_names:
        trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice_name,
            stack=_voice_to_stack[voice_name],
            durations=durations,
        )


def stirring_rhythms(score, voice_name, durations, divisions, index):
    for duration, division in zip(durations, divisions):
        stack = rmakers.stack(
            rmakers.talea(
                trinton.rotated_sequence(
                    trinton.logistic_map(
                        x=4,
                        r=-1,
                        n=12,
                        seed=2,
                    ),
                    index,
                ),
                division,
            ),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
        )

        trinton.make_and_append_rhythm_selections(
            score=score, voice_name=voice_name, stack=stack, durations=[duration]
        )


# pitch tools

_voice_to_pair = {
    score["violin 3 voice"]: (
        [
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -3,
            -5,
        ],
        [
            "1/1",
            "16/9",
            "729/512",
            "81/64",
            "32/27",
            "15/8",
            "6/5",
            "243/128",
            "10/9",
            "9/8",
            "3/2",
            "256/243",
            "3/2",
            "16/15",
            "8/5",
            "128/81",
            "4/3",
            "27/20",
            "27/16",
            "5/3",
            "5/4",
            "9/5",
            "45/32",
            "1/1",
        ],
    ),
    score["violin 2 voice"]: (
        [
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -5,
            -3,
            -3,
            -5,
        ],
        [
            "5/3",
            "112/36",
            "3645/1536",
            "567/256",
            "256/135",
            "510/168",
            "48/25",
            "21627/7040",
            "340/189",
            "801/440",
            "15/6",
            "1792/972",
            "15/6",
            "112/60",
            "64/25",
            "4352/1701",
            "32/15",
            "2403/1100",
            "918/336",
            "445/165",
            "25/12",
            "63/20",
            "225/96",
            "7/4",
        ],
    ),
}


def pitch_conjuring(voice, measures, selector, index):

    pair = _voice_to_pair[voice]

    pitch_list, ratio_list = pair

    pitches = trinton.rotated_sequence(
        pitch_list=pitch_list,
        start_index=index,
    )

    handler = evans.PitchHandler(pitch_list=pitches, forget=False)

    ratio_segment = trinton.rotated_sequence(
        pitch_list=ratio_list,
        start_index=index,
    )

    ratio_handler = evans.PitchHandler(
        pitch_list=[_ for _ in ratio_segment],
        forget=False,
        as_ratios=True,
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        ratio_handler(selections)


def pitch_arcana(voices, measures, selector, index):
    map = trinton.rotated_sequence(
        trinton.logistic_map(
            x=5,
            r=-1,
            n=12,
            seed=3,
        ),
        index,
    )

    handler = evans.PitchHandler(pitch_list=map, forget=False)

    for measure in measures:

        sel = []

        for voice in voices:

            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            top_level_components = trinton.get_top_level_components_from_leaves(
                current_measure
            )

            for tuplet in abjad.Selection(top_level_components).tuplets():
                for rest_group in abjad.Selection(tuplet).rests().group_by_contiguity():
                    abjad.mutate.fuse(rest_group)

            selections = selector(current_measure)

            sel.append(selections)

        handler(sel[:])


_string_to_pitch = {
    "IV": [
        -1.5,
        6.5,
        -0.5,
        1.5,
        10.5,
        13.5,
        6.5,
        22.5,
        18.5,
    ],
    "III": trinton.transpose(
        [
            -1.5,
            6.5,
            -0.5,
            1.5,
            10.5,
            13.5,
            6.5,
            22.5,
            18.5,
        ],
        7,
    ),
    "II": trinton.transpose(
        [
            -1.5,
            6.5,
            -0.5,
            1.5,
            10.5,
            13.5,
            6.5,
            22.5,
            18.5,
        ],
        14,
    ),
    "I": trinton.transpose(
        [
            -1.5,
            6.5,
            -0.5,
            1.5,
            10.5,
            13.5,
            6.5,
            22.5,
            18.5,
        ],
        21,
    ),
    "wrapping": [
        5,
        -5,
        -2,
        5,
        2,
        -2,
        -5,
        5,
    ],
}


def pitch_earthen(voice, measures, selector, string, seed, index):
    random.seed(seed)

    random_walk = trinton.random_walk(chord=_string_to_pitch[string], seed=seed)

    pitches = trinton.rotated_sequence(random_walk, index)

    handler = evans.PitchHandler(
        pitch_list=pitches,
        forget=False,
    )

    for measure in measures:
        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)

    if string != "wrapping":
        for measure in measures:
            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            selections = selector(current_measure)

            for leaf in selections:
                abjad.tweak(leaf.note_head).style = r"#'triangle"
            for tie in abjad.Selection(selections).logical_ties():
                abjad.attach(abjad.Articulation("tenuto"), tie[0])

    else:
        for measure in measures:
            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            selections = selector(current_measure)

            for leaf in selections:
                abjad.tweak(leaf.note_head).Accidental.transparent = True
            for tie in abjad.Selection(selections).logical_ties():
                abjad.attach(abjad.Articulation("marcato"), tie[0])


def pitch_naiads(voices, measures, selector, index):
    _voice_to_pitches = {
        score["violin 1 voice"]: [
            -5,
            -2,
            2,
            5,
            2,
            -2,
            -5,
            -2,
            2,
            5,
            -5,
            -2,
            2,
            5,
            2,
            -2,
            -5,
            -2,
            2,
            5,
            2,
            -2,
            -5,
            -2,
            2,
            5,
            -5,
            -2,
            2,
            5,
            -5,
            -2,
            2,
            5,
            -5,
            -2,
            2,
            5,
        ],
        score["violin 2 voice"]: trinton.rotated_sequence(
            pitch_list=[
                [
                    -4.5,
                    2.5,
                    9.5,
                    16.5,
                ],
                [
                    30,
                    37,
                    44,
                    51,
                ],
                [
                    -2,
                    5,
                    12,
                    19,
                ],
                [
                    30,
                    37,
                    44,
                    51,
                ],
                [
                    6,
                    13,
                    20,
                    27,
                ],
                [
                    30,
                    37,
                    44,
                    51,
                ],
                [
                    -4.5,
                    2.5,
                    9.5,
                    16.5,
                ],
                [
                    -1,
                    6,
                    13,
                    20,
                ],
                [
                    30,
                    37,
                    44,
                    51,
                ],
                [
                    -4.5,
                    2.5,
                    9.5,
                    16.5,
                ],
                [
                    1,
                    8,
                    15,
                    22,
                ],
            ],
            start_index=index,
        ),
    }
    for voice in voices:

        pitches = _voice_to_pitches[voice]

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False,
        )

        for measure in measures:

            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            selections = selector(current_measure)

            handler(selections)

        if voice == score["violin 1 voice"]:
            for measure in measures:
                grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

                current_measure = grouped_measures[measure - 1]

                selection = selector(current_measure)

                for leaf in selection:
                    abjad.tweak(leaf.note_head).Accidental.transparent = True

                for leaf in current_measure:
                    abjad.label.color_leaves(leaf, "#DarkRed")

        elif voice == score["violin 2 voice"]:
            for measure in measures:
                grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

                current_measure = grouped_measures[measure - 1]

                selections = selector(current_measure)

                for chord in selections:
                    for head in chord.note_heads:
                        abjad.tweak(head).style = r"#'harmonic-mixed"


_string_to_pitches = {
    "IV": [
        -5,
        -5,
        7,
        -1,
        -5,
        -5,
        -5,
        0,
        -5,
        14,
        -1,
        -5,
        -5,
    ],
    "III": trinton.transpose(
        [
            -5,
            -5,
            7,
            -1,
            -5,
            -5,
            -5,
            0,
            -5,
            14,
            -1,
            -5,
            -5,
        ],
        7,
    ),
    "II": trinton.transpose(
        [
            -5,
            -5,
            7,
            -1,
            -5,
            -5,
            -5,
            0,
            -5,
            14,
            -1,
            -5,
            -5,
        ],
        14,
    ),
    "I": trinton.transpose(
        [
            -5,
            -5,
            7,
            -1,
            -5,
            -5,
            -5,
            0,
            -5,
            14,
            -1,
            -5,
            -5,
        ],
        21,
    ),
}


def pitch_stirring(voice, measures, selector, string, index):
    pitches = trinton.rotated_sequence(_string_to_pitches[string], index)

    handler = evans.PitchHandler(
        pitch_list=pitches,
        forget=False,
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        for leaf in abjad.Selection(selections).leaves():
            if leaf.written_pitch == -5:
                abjad.tweak(leaf.note_head).style = r"#'cross"
            elif leaf.written_pitch == 2:
                abjad.tweak(leaf.note_head).style = r"#'cross"
            elif leaf.written_pitch == 9:
                abjad.tweak(leaf.note_head).style = r"#'cross"
            elif leaf.written_pitch == 16:
                abjad.tweak(leaf.note_head).style = r"#'cross"
            elif leaf.written_duration == abjad.Duration(1, 8):
                abjad.tweak(leaf.note_head).style = r"#'harmonic-mixed"
            elif leaf.written_duration == abjad.Duration(1, 16):
                abjad.tweak(leaf.note_head).style = r"#'harmonic-mixed"
            elif leaf.written_duration == abjad.Duration(1, 32):
                abjad.tweak(leaf.note_head).style = r"#'harmonic-mixed"
            else:
                abjad.tweak(leaf.note_head).style = r"#'cross"

        for tie in abjad.Selection(selections).logical_ties():
            abjad.attach(
                abjad.LilyPondLiteral(r"- \baca-circle-markup", format_slot="after"),
                tie[0],
            )


# transposition tools


def octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 12)


def octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -12)


def double_octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 24)


def double_octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -24)


# notation tools


def blank_time_signature(global_context=score["Global Context"], measures="all"):
    abjad.attach(
        abjad.LilyPondLiteral(
            r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
            format_slot="before",
        ),
        abjad.Selection(global_context).leaf(measures[0]),
    )
    for string in [
        r"\once \override Score.BarLine.stencil = ##f",
        r"\once \override Score.SpanBar.stencil = ##f",
        r"\once \override Score.TimeSignature.stencil = ##f",
    ]:
        for measure in measures[1 : measures[0 + len(measures) - 1]]:
            trinton.attach(
                voice=global_context,
                leaves=[measure],
                attachment=abjad.LilyPondLiteral(
                    string,
                    format_slot="before",
                ),
            )


def four_lines(score, voice, leaves):
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=leaves,
        attachments=[
            abjad.LilyPondLiteral(
                r"\staff-line-count 4",
                format_slot="absolute_before",
            ),
            abjad.Clef("percussion"),
        ],
    )


def five_lines(score, voice, leaves):
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=leaves,
        attachments=[
            abjad.LilyPondLiteral(
                r"\staff-line-count 5",
                format_slot="absolute_before",
            ),
            abjad.Clef("treble"),
        ],
    )


# selectors


def subharmonic_selector():
    def selector(argument):
        out = []
        ties = abjad.Selection(argument).logical_ties()
        for tie in ties:
            if tie.written_duration > abjad.Duration(1, 8):
                out.append(tie)
        return abjad.Selection(out[:]).leaves(pitched=True)

    return selector


def wrapping_selector(duration=abjad.Duration(1, 8)):
    def selector(argument):
        out = []
        ties = abjad.Selection(argument).logical_ties()
        for tie in ties:
            if tie.written_duration <= duration:
                out.append(tie)
        return abjad.Selection(out[:]).leaves(pitched=True)

    return selector
