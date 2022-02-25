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
        (3, 4),
        (5, 4),
        (7, 4),
        (6, 4),
        (5, 4),
        (7, 4),
        (6, 4),
        (5, 4),
        (7, 4),
        (1, 4),
        (1, 3),
        (1, 2),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        10,
        11,
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
        2,
        3,
        4,
    ],
    [
        trinton.select_logical_ties_by_index(
            [
                0,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                2,
                3,
            ]
        ),
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[
            (3, 4),
        ],
        index=index,
        rest_selector=selector,
    )

verge.stirring_rhythms(
    score=score,
    voice_name="violin 2 voice",
    durations=[
        (5, 4),
        (3, 4),
        (3, 8),
        (3, 8),
        (1, 4),
        (3, 4),
        (3, 4),
        (5, 4),
        (7, 4),
    ],
    divisions=[
        4,
        4,
        16,
        32,
        16,
        32,
        16,
        8,
        4,
    ],
    index=0,
)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (5, 4),
                (7, 4),
                (6, 4),
                (5, 4),
                (7, 4),
            ]
        ],
    )

verge.naiads_ii_rhythms(
    score=score,
    voice_names=[
        "violin 1 voice",
        "violin 2 voice",
    ],
    durations=[
        (3, 8),
        (1, 4),
        (1, 8),
        (1, 2),
        (1, 4),
    ],
    tuplets=verge.collapsing_tuplets_1,
    extra_counts=[
        0,
        1,
        0,
        3,
        1,
    ],
)

trinton.append_rests(
    score=score,
    voice="violin 3 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (6, 4),
        ]
    ],
)

for voice_name, index, selector in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        3,
        4,
        2,
    ],
    [
        trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
                4,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                1,
                2,
                4,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                3,
            ]
        ),
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[(5, 4), (8, 4)],
        index=index,
        rest_selector=selector,
    )

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[
        (1, 3),
        (1, 2),
    ],
)

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (1, 2),
        (1, 3),
    ],
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (1, 3),
            (1, 2),
        ]
    ],
)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[abjad.Skip("r4")],
    )


# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 4), 47),
        abjad.MetronomeMark((1, 4), 105),
        abjad.MetronomeMark((1, 4), 60),
        abjad.MetronomeMark((1, 4), 130),
        abjad.MetronomeMark((1, 4), 69),
    ],
    [
        0,
        1,
        6,
        7,
        10,
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

trinton.rewrite_meter_by_measure(
    score=score,
    measures=[
        1,
        2,
        3,
        4,
        5,
    ],
)

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        8,
        14,
        22,
        26,
    ],
    stop_beam=[
        12,
        20,
        23,
        27,
    ],
    beam_rests=True,
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
    ],
    selector=baca.selectors.pleaves(),
    index=33,
)

# trinton.annotate_leaves(score)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    for number in [
        0,
        6,
        7,
        8,
        9,
    ]:
        trinton.unbeam_quarters(
            abjad.Selection(score[voice_name]).leaves().group_by_measure()[number]
        )

abjad.detach(abjad.StartBeam, abjad.Selection(score["violin 1 voice"]).leaf(16))

abjad.attach(abjad.StartBeam(), abjad.Selection(score["violin 1 voice"]).leaf(10))

verge.octave_down(
    [
        abjad.Selection(score["violin 2 voice"]).leaf(
            2,
        )
    ]
)

verge.pitch_stirring(
    voice=score["violin 2 voice"],
    measures=[
        2,
        3,
        4,
        5,
        6,
    ],
    selector=baca.selectors.pleaves(),
    string="I",
    index=0,
)

verge.pitch_naiads(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
    ],
    measures=[
        7,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

verge.pitch_earthen(
    voice=score["violin 1 voice"],
    measures=[
        8,
        9,
    ],
    selector=baca.selectors.pleaves(),
    string="wrapping",
    seed=7,
    index=8,
)

for voice_name, string in zip(["violin 2 voice", "violin 3 voice"], ["II", "III"]):
    verge.pitch_earthen(
        voice=score[voice_name],
        measures=[
            8,
            9,
        ],
        selector=baca.selectors.pleaves(),
        string=string,
        seed=12,
        index=6,
    )

for voice_name, index in zip(
    [
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        8,
        7,
    ],
):
    verge.pitch_conjuring(
        voice=score[voice_name],
        measures=[
            10,
            11,
            12,
        ],
        selector=baca.selectors.pleaves(),
        index=index,
    )

# attachments

for start, stop in zip(
    [
        abjad.Selection(score["violin 1 voice"]).leaf(0),
        abjad.Selection(score["violin 2 voice"]).leaf(0),
        abjad.Selection(score["violin 3 voice"]).leaf(0),
    ],
    [
        abjad.Selection(score["violin 1 voice"]).leaf(2),
        abjad.Selection(score["violin 2 voice"]).leaf(2),
        abjad.Selection(score["violin 3 voice"]).leaf(2),
    ],
):
    trinton.dashed_slur(
        start,
        stop,
    )

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[2],
    attachments=[
        abjad.Articulation("staccato"),
        abjad.Articulation("tenuto"),
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        3,
        12,
        19,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "CLT" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        8,
        14,
        28,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "1/2 CLT" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        10,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Crine" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        41,
        44,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "DP, wrapping" 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        43,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "XSB" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        48,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "NB, Ord." 1', format_slot="after"
    ),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        45,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Ord." 1', format_slot="after"),
)

trinton.glissando(
    score=score,
    voice="violin 2 voice",
    start_gliss=[
        5,
        7,
        14,
        20,
    ],
    stop_gliss=[
        6,
        8,
        17,
        22,
    ],
)

violin_2_measures = abjad.Selection(score["violin 2 voice"]).leaves().group_by_measure()

for leaf in abjad.Selection(violin_2_measures[6]).leaves().exclude([-1]):
    abjad.attach(
        abjad.Glissando(),
        leaf,
    )

trinton.ottava(
    score=score,
    voice="violin 2 voice",
    start_ottava=[
        19,
        30,
        32,
        34,
        37,
        41,
    ],
    stop_ottava=[
        19,
        30,
        32,
        34,
        37,
        41,
    ],
    octave=1,
)

trinton.ficta(
    score=score,
    voice="violin 2 voice",
    start_ficta=[
        29,
    ],
    stop_ficta=[
        42,
    ],
)

verge.four_lines(
    score=score,
    voice="violin 1 voice",
    leaves=[
        10,
    ],
)

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[
        10,
        13,
        16,
        20,
        23,
        26,
        29,
        32,
        36,
    ],
    stop_slur=[
        12,
        15,
        19,
        22,
        25,
        28,
        31,
        35,
        38,
    ],
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"\markup {II}",
    start_leaf=[
        43,
    ],
    stop_leaf=[
        47,
    ],
    padding=8,
)

trinton.write_hooked_spanner(
    voice=score["violin 3 voice"],
    string=r"\markup {III}",
    start_leaf=[
        12,
    ],
    stop_leaf=[
        14,
    ],
    padding=6,
)

trinton.attach(
    voice=score["violin 2 voice"], leaves=[0], attachment=abjad.Dynamic("pp")
)

trinton.attach(
    voice=score["violin 2 voice"], leaves=[3], attachment=abjad.StartHairpin("<")
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        29,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        48,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        10,
    ],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        38,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[39],
    attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ff")],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        44,
    ],
    attachment=abjad.Dynamic("fff"),
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/03",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
