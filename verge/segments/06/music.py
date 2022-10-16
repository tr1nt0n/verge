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
        (7, 4),
        (6, 4),
        (5, 4),
        (2, 5),
        (1, 2),
        (5, 7),
        (1, 4),
        (3, 4),
        (3, 4),
        (5, 4),
        (7, 4),
        (1, 4),
        (6, 4),
        (5, 4),
        (7, 4),
        (1, 4),
        (6, 4),
        (3, 4),
        (2, 5),
        (1, 2),
        (5, 7),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        3,
        4,
        5,
    ]
)

verge.blank_time_signature(
    measures=[
        18,
        19,
        20,
    ]
)

# rhythm

verge.stirring_rhythms(
    score=score,
    voice_name="violin 2 voice",
    durations=[
        (3, 8),
        (3, 8),
        (1, 1),
        (3, 2),
        (3, 4),
        (1, 4),
        (1, 8),
        (1, 8),
    ],
    divisions=[
        64,
        64,
        8,
        4,
        16,
        32,
        64,
        128,
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
                (7, 4),
                (6, 4),
                (5, 4),
            ]
        ],
    )

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (5, 7),
        (1, 2),
        (2, 5),
    ],
)

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[
        (2, 5),
        (1, 2),
        (5, 7),
    ],
)

verge.naiads_ii_rhythms(
    score=score,
    voice_names=["violin 2 voice"],
    durations=[
        (1, 4),
        (3, 4),
        (1, 2),
        (1, 4),
        (5, 4),
        (1, 4),
        (3, 2),
        (1, 4),
        (3, 4),
        (1, 2),
        (1, 4),
    ],
    tuplets=verge.collapsing_tuplets_2,
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (2, 5),
            (1, 2),
            (5, 7),
        ]
    ],
)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (1, 4),
                (3, 4),
                (3, 4),
                (5, 4),
                (7, 4),
                (1, 4),
                (6, 4),
            ]
        ],
    )

verge.naiads_ii_rhythms(
    score=score,
    voice_names=["violin 1 voice"],
    durations=[
        (3, 2),
        (3, 2),
        (1, 2),
        (3, 2),
        (1, 2),
    ],
    tuplets=verge.collapsing_tuplets_2,
    division=32,
    extra_counts=[
        1,
        3,
        2,
    ],
)

string = "c'2.~ c'2~ c'4 c'1. c'16 c'8 c'32 c'32 c'8 c'8 c'2~ c'2.~ c'4 c'8 c'8 c'32 c'32 c'8 c'16"

score["violin 2 voice"].extend(string)

trinton.reduce_tuplets(score=score, voice="violin 1 voice", tuplets=[2])

trinton.append_rests(
    score=score,
    voice="violin 3 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (3, 2),
            (3, 2),
            (1, 2),
            (3, 2),
            (1, 2),
        ]
    ],
)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (2, 5),
                (1, 2),
                (5, 7),
            ]
        ],
    )

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (2, 5),
        (1, 2),
        (5, 7),
    ],
)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    trinton.append_rests(score=score, voice=voice_name, rests=[abjad.Skip("r4")])

# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 4), 60),
        abjad.MetronomeMark((1, 4), 130),
        abjad.MetronomeMark((1, 4), 69),
        abjad.MetronomeMark((1, 4), 47),
        abjad.MetronomeMark((1, 4), 60),
    ],
    [
        0,
        3,
        6,
        13,
        18,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=met)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \halign #-4 \abs-fontsize #8.5 { Rit. }",
    end_text=r"\markup { . }",
    start_leaf=[
        3,
    ],
    stop_leaf=[
        6,
    ],
    padding=3,
)

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
    ],
)

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        0,
        5,
        9,
        15,
        19,
        22,
        24,
        119,
        128,
    ],
    stop_beam=[
        4,
        8,
        13,
        16,
        20,
        23,
        30,
        124,
        133,
    ],
    beam_rests=True,
)

sel = []
violin_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["violin 2 voice"])
)
for number in [
    6,
    7,
    8,
    9,
    10,
    11,
]:
    current_measure = violin_2_measures[number]
    for leaf in current_measure:
        sel.append(leaf)
trinton.unbeam_quarters(sel)

abjad.detach(abjad.StartBeam, abjad.select.leaf(score["violin 2 voice"], 54))


# pitching

verge.pitch_arcana(
    voices=[
        score["violin 2 voice"],
    ],
    measures=[
        1,
        2,
        3,
    ],
    selector=trinton.pleaves(),
    index=51,
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            1,
            2,
            3,
            18,
            19,
            25,
            26,
        ],
    )
)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            4,
            16,
            17,
            30,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            5,
            7,
            13,
        ],
    )
)

for voice_name in ["violin 2 voice", "violin 3 voice"]:
    verge.pitch_conjuring(
        voice=score[voice_name],
        measures=[
            4,
            5,
            6,
        ],
        selector=trinton.pleaves(),
        index=9,
    )

for measures, string, index in zip(
    [
        [7, 8],
        [
            9,
            10,
            11,
        ],
        [
            12,
            13,
        ],
    ],
    [
        "IV",
        "II",
        "III",
    ],
    [
        0,
        4,
        8,
    ],
):
    verge.pitch_stirring(
        voice=score["violin 2 voice"],
        measures=measures,
        selector=trinton.pleaves(),
        string=string,
        index=index,
    )

verge.pitch_naiads(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
    ],
    measures=[
        14,
        15,
        16,
        17,
        18,
    ],
    selector=trinton.pleaves(),
    index=0,
)

verge.pitch_earthen(
    voice=score["violin 2 voice"],
    measures=[
        19,
        20,
        21,
    ],
    selector=trinton.pleaves(),
    string="I",
    seed=15,
    index=0,
)

# trinton.annotate_leaves(score)

# attachments

abjad.detach(abjad.Tie, abjad.select.leaf(score["violin 2 voice"], 4))

verge.five_lines(
    score=score,
    voice="violin 2 voice",
    leaves=[0],
)

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[
        14,
        17,
        20,
        24,
        27,
        30,
        33,
        36,
        40,
        44,
        48,
        52,
        55,
        58,
        62,
        65,
        68,
        71,
        74,
        78,
        82,
        86,
        90,
        93,
        96,
        100,
        103,
        106,
        109,
        112,
        116,
        120,
        124,
        128,
        131,
        134,
        138,
        141,
        144,
        147,
        150,
        154,
        158,
        162,
        166,
        169,
        172,
        176,
        179,
        182,
        185,
        188,
        192,
        196,
    ],
    stop_slur=[
        16,
        19,
        23,
        26,
        29,
        32,
        35,
        39,
        43,
        47,
        51,
        54,
        57,
        61,
        64,
        67,
        70,
        73,
        77,
        81,
        85,
        89,
        92,
        95,
        99,
        102,
        105,
        108,
        111,
        115,
        119,
        123,
        127,
        130,
        133,
        137,
        140,
        143,
        146,
        149,
        153,
        157,
        161,
        165,
        168,
        171,
        175,
        178,
        181,
        184,
        187,
        191,
        195,
        199,
    ],
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        0,
        8,
        16,
        18,
        23,
        33,
    ],
    stop_slur=[
        3,
        12,
        17,
        22,
        26,
        34,
    ],
)

trinton.write_slur(
    voice=score["violin 3 voice"],
    start_slur=[
        4,
    ],
    stop_slur=[
        5,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        5,
        6,
        7,
        13,
        30,
    ],
    attachments=[abjad.Articulation("marcato"), abjad.Articulation("staccato")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        4,
        20,
        22,
    ],
    attachment=abjad.Articulation("tenuto"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        36,
        43,
        44,
        50,
        56,
        57,
        69,
        70,
        71,
        82,
        90,
        96,
        97,
    ],
    attachment=abjad.Glissando(),
)

trinton.ficta(
    score=score,
    voice="violin 2 voice",
    start_ficta=[
        115,
    ],
    stop_ficta=[
        133,
    ],
)

trinton.glissando(
    score=score,
    voice="violin 2 voice",
    start_gliss=[
        115,
        118,
        119,
        120,
        121,
        122,
        123,
        124,
        125,
        128,
        129,
        130,
        131,
        132,
    ],
    stop_gliss=[
        118,
        119,
        120,
        121,
        122,
        123,
        124,
        125,
        128,
        129,
        130,
        131,
        132,
        133,
    ],
)

trinton.ottava(
    score=score,
    voice="violin 2 voice",
    start_ottava=[
        118,
        120,
        122,
        125,
        131,
        133,
    ],
    stop_ottava=[
        118,
        120,
        122,
        127,
        131,
        133,
    ],
    octave=1,
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        0,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Ord." 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        35,
        63,
        92,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "CLT" 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        50,
        76,
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
        134,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "XSB" 1', "after"),
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"\markup {I}",
    start_leaf=[
        134,
    ],
    stop_leaf=[
        137,
    ],
    padding=12.5,
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[0],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        4,
    ],
    attachment=abjad.Dynamic("fp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        5,
        30,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        6,
        27,
        31,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        7,
        13,
        26,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        8,
        53,
        55,
        74,
        76,
        92,
        95,
    ],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin("|>o")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        14,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        16,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">o")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        18,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        23,
        35,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        115,
        69,
        90,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        14,
    ],
    attachment=abjad.StartHairpin(">"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        50,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("|>")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        52,
        54,
        73,
        75,
        91,
        93,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        56,
        77,
        96,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        17,
        24,
        30,
        36,
        44,
        52,
        58,
        65,
        71,
        78,
        86,
        93,
        100,
        106,
        112,
        120,
        128,
        134,
        141,
        147,
        154,
        162,
        169,
        176,
        182,
        188,
        196,
    ],
    attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="violin 1 voice",
    leaves=[
        20,
        27,
        33,
        40,
        48,
        55,
        62,
        68,
        74,
        82,
        90,
        96,
        103,
        109,
        116,
        124,
        131,
        138,
        144,
        150,
        158,
        166,
        172,
        179,
        185,
        192,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">")],
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        199,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        134,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        137,
    ],
    attachment=abjad.Dynamic("fff"),
)


# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/06",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
