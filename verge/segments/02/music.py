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

trinton.rewrite_meter_by_measure(
    score=score,
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
        7,
    ],
)

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

# trinton.annotate_leaves(score)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            1,
            9,
            17,
            18,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            1,
            2,
            4,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            14,
            17,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            20,
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
            17,
            18,
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
        abjad.select.leaf(score["violin 1 voice"], 0),
        abjad.select.leaf(score["violin 2 voice"], 0),
        abjad.select.leaf(score["violin 3 voice"], 0),
        abjad.select.leaf(score["violin 1 voice"], 11),
        abjad.select.leaf(score["violin 2 voice"], 11),
        abjad.select.leaf(score["violin 3 voice"], 11),
    ],
    [
        abjad.select.leaf(score["violin 1 voice"], 5),
        abjad.select.leaf(score["violin 2 voice"], 6),
        abjad.select.leaf(score["violin 3 voice"], 5),
        abjad.select.leaf(score["violin 1 voice"], 15),
        abjad.select.leaf(score["violin 2 voice"], 14),
        abjad.select.leaf(score["violin 3 voice"], 16),
    ],
):
    trinton.dashed_slur(
        start,
        stop,
    )
#
for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for number in [2, 6]:
        current_measure = measures[number]
        for leaf in abjad.select.leaves(current_measure, pitched=True):
            for tie in abjad.select.logical_ties(leaf):
                abjad.attach(abjad.Articulation("staccato"), tie[0])
                abjad.attach(abjad.Articulation("marcato"), tie[0])
    sel = []
    for number in [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
    ]:
        current_measure = measures[number]
        for leaf in current_measure:
            sel.append(leaf)
    trinton.unbeam_quarters(sel)

abjad.detach(abjad.StartBeam, abjad.select.leaf(score["violin 2 voice"], 3))
abjad.attach(abjad.StartBeam(), abjad.select.leaf(score["violin 3 voice"], 0))


for voice_name in ["violin 2 voice", "violin 3 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for leaf in abjad.select.leaves(measures[3], pitched=True):
        for tie in abjad.select.logical_ties(leaf):
            abjad.attach(abjad.Articulation("staccato"), tie[0])
            abjad.attach(abjad.Articulation("marcato"), tie[0])

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for leaf in abjad.select.leaves(measures[5], pitched=True):
        for tie in abjad.select.logical_ties(leaf):
            abjad.attach(abjad.Articulation("staccato"), tie[0])
            abjad.attach(abjad.Articulation("marcato"), tie[0])

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
        16,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        19,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        20,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        21,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        19,
    ],
    stop_slur=[
        20,
    ],
)

trinton.write_slur(
    voice=score["violin 3 voice"],
    start_slur=[
        21,
    ],
    stop_slur=[
        22,
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
