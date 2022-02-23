import abjad
import evans
import baca
import trinton
import verge
from abjadext import rmakers
from abjadext import microtones

# score

score = verge.score

# time signatures

trinton.write_time_signatures(
    [
        (5, 16),
        (7, 16),
        (1, 16),
        (6, 16),
        (3, 16),
        (7, 16),
        (1, 16),
        (2, 5),
        (1, 2),
        (7, 15),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        7,
        8,
        9,
    ]
)

# rhythm

for voice_name, index, selector in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        1,
        2,
        3,
    ],
    [
        trinton.select_logical_ties_by_index(
            [
                2,
                3,
                6,
                8,
                9,
                13,
                14,
                15,
                16,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                2,
                5,
                6,
                8,
                9,
                11,
                12,
                16,
                17,
                18,
                19,
                21,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                2,
                3,
                5,
                6,
                8,
                9,
                11,
                12,
                13,
                14,
                15,
                16,
                19,
                20,
                22,
                23,
                24,
            ]
        ),
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[
            (5, 16),
            (7, 16),
            (1, 16),
            (6, 16),
            (3, 16),
            (7, 16),
            (1, 16),
        ],
        index=index,
        rest_selector=selector,
    )

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (7, 15),
            (1, 2),
            (
                2,
                5,
            ),
        ]
    ],
)

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (7, 15),
        (1, 2),
        (
            2,
            5,
        ),
    ],
)

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[
        (2, 5),
        (1, 2),
        (7, 15),
    ],
)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    trinton.append_rests(score=score, voice=voice_name, rests=[abjad.Skip("r4")])


# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 16), 240),
        abjad.MetronomeMark((1, 4), 130),
    ],
    [
        0,
        7,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=met)
#
# trinton.attach(
#     voice=score["Global Context"],
#     leaves=[
#         7,
#     ],
#     attachment=abjad.LilyPondLiteral(r"\break", format_slot="before"),
# )
#
trinton.populate_fermata_measures(
    score=score,
    voices=["Global Context", "violin 1 voice", "violin 2 voice", "violin 3 voice"],
    leaves=[
        [-1],
        [-1],
        [-1],
        [-1],
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        -1,
    ],
    attachment=abjad.BarLine("||"),
)

# meter rewriting and beaming

# trinton.annotate_leaves(score)

# pitching

verge.pitch_arcana(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
        score["violin 3 voice"],
    ],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
        7,
    ],
    selector=baca.selectors.pleaves(),
    index=5,
)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            1,
            10,
            21,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            1,
            3,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            15,
            20,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            25,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 1 voice",
        leaves=[
            8,
            13,
            19,
            20,
        ],
    )
)

verge.pitch_conjuring(
    voice=score["violin 2 voice"],
    measures=[
        8,
        9,
        10,
    ],
    selector=baca.selectors.pleaves(),
    index=4,
)

verge.pitch_conjuring(
    voice=score["violin 3 voice"],
    measures=[
        8,
        9,
        10,
    ],
    selector=baca.selectors.pleaves(),
    index=4,
)

# attachments

for start, stop in zip(
    [
        abjad.Selection(score["violin 1 voice"]).leaf(0),
        abjad.Selection(score["violin 2 voice"]).leaf(1),
        abjad.Selection(score["violin 3 voice"]).leaf(1),
        abjad.Selection(score["violin 1 voice"]).leaf(11),
        abjad.Selection(score["violin 2 voice"]).leaf(13),
        abjad.Selection(score["violin 3 voice"]).leaf(17),
    ],
    [
        abjad.Selection(score["violin 1 voice"]).leaf(5),
        abjad.Selection(score["violin 2 voice"]).leaf(4),
        abjad.Selection(score["violin 3 voice"]).leaf(4),
        abjad.Selection(score["violin 1 voice"]).leaf(13),
        abjad.Selection(score["violin 2 voice"]).leaf(15),
        abjad.Selection(score["violin 3 voice"]).leaf(18),
    ],
):
    trinton.dashed_slur(
        start,
        stop,
    )

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
    for number in [2, 6]:
        current_measure = measures[number]
        for leaf in abjad.Selection(current_measure).leaves(pitched=True):
            abjad.attach(abjad.Articulation("staccato"), leaf)
            abjad.attach(abjad.Articulation("marcato"), leaf)

for voice_name in ["violin 2 voice", "violin 3 voice"]:
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
    for leaf in abjad.Selection(measures[3]).leaves(pitched=True):
        abjad.attach(abjad.Articulation("staccato"), leaf)
        abjad.attach(abjad.Articulation("marcato"), leaf)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
    for leaf in abjad.Selection(measures[5]).leaves(pitched=True):
        abjad.attach(abjad.Articulation("staccato"), leaf)
        abjad.attach(abjad.Articulation("marcato"), leaf)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        0,
        11,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        6,
        18,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        22,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        23,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        24,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        22,
    ],
    stop_slur=[
        23,
    ],
)

trinton.write_slur(
    voice=score["violin 3 voice"],
    start_slur=[
        26,
    ],
    stop_slur=[
        27,
    ],
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/02",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
