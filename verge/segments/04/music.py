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
        (3, 8),
        (5, 8),
        (7, 8),
        (1, 8),
        (6, 8),
        (5, 8),
        (7, 8),
        (5, 9),
        (2, 5),
        (1, 2),
        (1, 3),
        (1, 3),
        (6, 8),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        7,
        8,
        9,
        10,
        11,
    ]
)

# rhythm

string = "c'2.~ c'4. r4 c'2 r8 r8 c'8 c'8 c'8 c'8 c'8 r8 c'2 ~ c'8 r4 c'16 c'8 c'8 c'16 c'16 c'16"

score["violin 2 voice"].extend(string)

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (5, 9),
        (2, 5),
        (1, 2),
        (1, 3),
        (1, 3),
    ],
)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (3, 8),
                (5, 8),
                (7, 8),
                (1, 8),
                (6, 8),
                (5, 8),
                (7, 8),
                (5, 9),
                (2, 5),
                (1, 2),
                (1, 3),
                (1, 3),
            ]
        ],
    )

trinton.append_rests(score=score, voice="violin 3 voice", rests=[abjad.Skip("r2.")])

for voice_name, index, selector in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
    ],
    [
        14,
        9,
    ],
    [
        trinton.select_logical_ties_by_index(
            [
                2,
                3,
                9,
            ]
        ),
        None,
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[
            (1, 8),
            (2, 8),
            (3, 8),
        ],
        index=index,
        rest_selector=selector,
    )

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    trinton.append_rests(score=score, voice=voice_name, rests=[abjad.Skip("r4")])


# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 8), 210),
        abjad.MetronomeMark((1, 4), 60),
        abjad.MetronomeMark((1, 8), 260),
    ],
    [
        0,
        7,
        12,
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

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        7,
        10,
        18,
    ],
    stop_beam=[
        9,
        12,
        25,
    ],
    beam_rests=True,
)

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 1 voice",
    start_beam=[
        21,
    ],
    stop_beam=[
        25,
    ],
    beam_rests=True,
)

# pitching

verge.pitch_arcana(
    voices=[
        score["violin 2 voice"],
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
    index=37,
)

# trinton.annotate_leaves(score)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            0,
            1,
            2,
            3,
            14,
            15,
            16,
            21,
            22,
            24,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            5,
            19,
            20,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            12,
            25,
        ],
    )
)

verge.pitch_stirring(
    voice=score["violin 2 voice"],
    measures=[
        8,
        9,
        10,
        11,
        12,
    ],
    selector=baca.selectors.pleaves(),
    string="III",
    index=10,
)

verge.pitch_naiads(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
    ],
    measures=[-1],
    selector=baca.selectors.pleaves(),
    index=13,
)

# attachments

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[
        14,
        18,
        24,
    ],
    stop_slur=[
        15,
        22,
        25,
    ],
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        8,
    ],
    stop_slur=[
        11,
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        0,
        5,
        12,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        14,
        18,
        19,
        21,
        23,
        24,
        25,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.ottava(
    score=score,
    voice="violin 2 voice",
    start_ottava=[
        33,
        35,
        37,
    ],
    stop_ottava=[
        33,
        35,
        37,
    ],
    octave=1,
)

violin_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["violin 2 voice"])
)

for leaf in abjad.select.exclude(argument=violin_2_measures[12], indices=[-1]):
    abjad.attach(abjad.Glissando(), leaf)

trinton.ficta(
    score=score,
    voice="violin 2 voice",
    start_ficta=[
        32,
    ],
    stop_ficta=[
        39,
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        26,
        30,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "CLT" 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        29,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "1/2 CLT" 1', "after"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        14,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Crine" 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        0,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        2,
    ],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        3,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        0,
        14,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        2,
    ],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[9],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[14],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        26,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        25,
    ],
    attachment=abjad.Dynamic("f"),
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/04",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
