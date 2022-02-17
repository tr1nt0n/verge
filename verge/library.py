import abjad
import baca
import evans
import trinton
import verge
import random
from abjadext import rmakers
from abjadext import microtones

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

# rhythm tools


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


# notation tools


def blank_time_signature(global_context=score["Global Context"]):
    abjad.attach(
        abjad.LilyPondLiteral(
            r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
            format_slot="before",
        ),
        abjad.Selection(global_context).leaf(0),
    )

    for string in [
        r"\once \override Score.BarLine.stencil = ##f",
        r"\once \override Score.SpanBar.stencil = ##f",
        r"\once \override Score.TimeSignature.stencil = ##f",
    ]:
        for skip in abjad.Selection(global_context).leaves().exclude([0]):
            abjad.attach(
                abjad.LilyPondLiteral(
                    string,
                    format_slot="before",
                ),
                skip,
            )
