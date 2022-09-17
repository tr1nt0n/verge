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
        (1, 4),
        (6, 4),
        (3, 4),
        (5, 4),
        (1, 4),
        (1, 3),
        (1, 4),
        (2, 5),
        (3, 7),
        (9, 4),
        (9, 4),
        (6, 4),
        (5, 4),
        (5, 4),
        (4, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (4, 4),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        5,
        6,
        7,
        8,
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
        3,
        4,
        5,
    ],
    [
        trinton.select_logical_ties_by_index(
            [
                0,
                1,
                3,
                4,
                6,
                8,
                10,
                11,
                14,
                16,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                2,
                4,
                5,
                7,
                8,
                9,
                12,
                13,
                16,
                19,
                20,
            ]
        ),
        trinton.select_logical_ties_by_index(
            [
                0,
                2,
                3,
                4,
                5,
                7,
                8,
                12,
                15,
                18,
                20,
                21,
                23,
                25,
            ]
        ),
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[
            (1, 4),
            (1, 4),
            (5, 4),
            (1, 4),
            (2, 4),
            (5, 4),
            (1, 4),
        ],
        index=index,
        rest_selector=selector,
    )

for number in [
    2,
    5,
]:
    abjad.override(
        abjad.select.tuplet(score["violin 3 voice"], number)
    ).TupletNumber.text = r"\markup \italic { 7:10 }"

abjad.override(
    abjad.select.tuplet(score["violin 1 voice"], 5)
).TupletNumber.text = r"\markup \italic { 6:5 }"

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (3, 7),
        (2, 5),
        (1, 4),
        (1, 3),
    ],
)

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[
        (1, 3),
        (1, 4),
        (2, 5),
        (3, 7),
    ],
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=_)
        for _ in [
            (1, 3),
            (1, 4),
            (2, 5),
            (3, 7),
        ]
    ],
)

string = "c'1.~ c'2.~ c'1.~ c'2.~ c'1."

score["violin 2 voice"].extend(string)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (9, 4),
                (9, 4),
                (6, 4),
                (5, 4),
                (5, 4),
                (4, 4),
                (3, 4),
                (5, 4),
                (3, 4),
                (4, 4),
                (1, 4),
            ]
        ],
    )

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="violin 2 voice",
    stack=rmakers.stack(
        rmakers.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    2,
                    2,
                    1,
                    1,
                    1,
                    2,
                    2,
                    1,
                    1,
                    2,
                    1,
                    1,
                    2,
                ),
                (
                    1,
                    2,
                    1,
                    1,
                    2,
                    1,
                    1,
                    2,
                    2,
                    1,
                    1,
                    1,
                    2,
                    2,
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    2,
                    1,
                    1,
                    2,
                    1,
                    1,
                    2,
                    2,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                    2,
                    2,
                    1,
                    1,
                    1,
                    2,
                    2,
                ),
            ]
        ),
        rmakers.trivialize(lambda _: abjad.select.tuplets(_)),
        rmakers.extract_trivial(lambda _: abjad.select.tuplets(_)),
        rmakers.rewrite_rest_filled(lambda _: abjad.select.tuplets(_)),
        rmakers.rewrite_sustained(lambda _: abjad.select.tuplets(_)),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.select.tuplets(_)),
    ),
    durations=[
        (5, 4),
        (5, 4),
        (4, 4),
        (3, 4),
    ],
)

for number, string in zip([8, 9], ["11:10", "23:20"]):
    abjad.override(
        abjad.select.tuplet(score["violin 2 voice"], number)
    ).TupletNumber.text = rf"\markup \italic {string}"

trinton.append_rests(score=score, voice="violin 2 voice", rests=[abjad.Rest("r2")])

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="violin 2 voice",
    stack=rmakers.stack(
        rmakers.accelerando([(1, 8), (1, 20), (1, 32)]),
        rmakers.beam(),
        rmakers.duration_bracket(),
        rmakers.trivialize(lambda _: abjad.select.tuplets(_)),
        rmakers.extract_trivial(lambda _: abjad.select.tuplets(_)),
        rmakers.rewrite_rest_filled(lambda _: abjad.select.tuplets(_)),
        rmakers.rewrite_sustained(lambda _: abjad.select.tuplets(_)),
    ),
    durations=[
        (5, 2),
    ],
)

trinton.append_rests(score=score, voice="violin 2 voice", rests=[abjad.Skip("r4")])

# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 4), 130),
        abjad.MetronomeMark((1, 4), 69),
        abjad.MetronomeMark((1, 4), 77),
    ],
    [
        0,
        5,
        12,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=met)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \abs-fontsize #8.5 { Accel. }",
    end_text=r"\markup { . }",
    start_leaf=[
        10,
    ],
    stop_leaf=[
        12,
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

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[-1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f",
            "absolute_after",
        ),
        abjad.BarLine("||"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        11,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f",
            "absolute_after",
        ),
        abjad.BarLine(".|:"),
    ],
)


trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        18,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f",
            "absolute_after",
        ),
        abjad.BarLine(":|."),
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        12,
    ],
    attachment=abjad.Markup(r"\markup \abs-fontsize #12 { X5 }"),
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
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

# trinton.annotate_leaves(score)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    sel = []
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for number in [
        0,
        1,
        2,
        3,
    ]:
        current_measure = measures[number]
        for leaf in current_measure:
            sel.append(leaf)
    trinton.unbeam_quarters(sel)

abjad.detach(abjad.StartBeam, abjad.select.leaf(score["violin 3 voice"], 18))

abjad.attach(abjad.StartBeam(), abjad.select.leaf(score["violin 3 voice"], 20))

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        19,
    ],
    stop_beam=[
        20,
    ],
    beam_rests=True,
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            1,
            9,
            10,
            20,
        ],
    )
)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 1 voice",
        leaves=[
            2,
            4,
            8,
            10,
            11,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 1 voice",
        leaves=[
            11,
            13,
            17,
            18,
        ],
    )
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            4,
            14,
            21,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            6,
        ],
    )
)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            13,
            14,
            23,
        ],
    )
)

verge.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 3 voice",
        leaves=[
            16,
        ],
    )
)

for voice_name in ["violin 2 voice", "violin 3 voice"]:
    verge.pitch_conjuring(
        voice=score[voice_name],
        measures=[
            6,
            7,
            8,
            9,
        ],
        selector=baca.selectors.pleaves(),
        index=20,
    )

g_octave_handler = evans.PitchHandler(
    pitch_list=[
        [
            -5,
            7,
        ]
    ],
    forget=False,
)

g_octave_handler(abjad.select.leaf(score["violin 2 voice"], 25))

a_octave_handler = evans.PitchHandler(
    pitch_list=[
        [
            -3,
            9,
        ]
    ],
    forget=False,
)

for n in [
    12,
    13,
    14,
    15,
]:
    a_octave_handler(
        abjad.select.group_by_measure(abjad.select.leaves(score["violin 2 voice"]))[n]
    )

widening_handler = evans.PitchHandler(
    pitch_list=[
        [
            -5,
            7,
        ],
        [-5, 6.5],
        [
            -5,
            7,
        ],
        [-5, 6.5],
        [-5, 7.5],
        [-5, 7],
        [-5, 7.5],
        [-5, 6],
        [-5, 7.5],
        [-5, 6],
        [-5, 8],
        [-5, 6],
        [-5, 8.5],
        [-5, 5.5],
        [-5, 8.5],
        [-5, 5.5],
        [-5, 9],
        [-5, 5],
        [-5, 9.5],
        [-5, 4.5],
        [-5, 10],
        [-5, 4],
        [-5, 11],
        [-5, 4.5],
        [-5, 12],
        [-5, 3],
        [-5, 13],
        [-5, 2.5],
        [-5, 15],
        [-5, 2.5],
        [-5, 17],
        [-5, 2.5],
    ],
    forget=False,
)

for n in [
    16,
    17,
    18,
]:
    widening_handler(
        abjad.select.group_by_measure(abjad.select.leaves(score["violin 2 voice"]))[n]
    )

abjad.override(
    abjad.select.leaf(score["violin 2 voice"], 84)
).Beam.grow_direction = abjad.RIGHT

# attachments

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', "after"),
)

verge.five_lines(
    score=score,
    voice="violin 1 voice",
    leaves=[
        0,
    ],
)

for start, stop in zip(
    [
        abjad.select.leaf(score["violin 1 voice"], 0),
        abjad.select.leaf(score["violin 1 voice"], 9),
        abjad.select.leaf(score["violin 1 voice"], 16),
        abjad.select.leaf(score["violin 2 voice"], 0),
        abjad.select.leaf(score["violin 2 voice"], 6),
        abjad.select.leaf(score["violin 2 voice"], 8),
        abjad.select.leaf(score["violin 2 voice"], 19),
        abjad.select.leaf(score["violin 2 voice"], 84),
        abjad.select.leaf(score["violin 3 voice"], 0),
        abjad.select.leaf(score["violin 3 voice"], 6),
        abjad.select.leaf(score["violin 3 voice"], 10),
        abjad.select.leaf(score["violin 3 voice"], 20),
    ],
    [
        abjad.select.leaf(score["violin 1 voice"], 2),
        abjad.select.leaf(score["violin 1 voice"], 11),
        abjad.select.leaf(score["violin 1 voice"], 18),
        abjad.select.leaf(score["violin 2 voice"], 1),
        abjad.select.leaf(score["violin 2 voice"], 7),
        abjad.select.leaf(score["violin 2 voice"], 11),
        abjad.select.leaf(score["violin 2 voice"], 20),
        abjad.select.leaf(score["violin 2 voice"], 115),
        abjad.select.leaf(score["violin 3 voice"], 2),
        abjad.select.leaf(score["violin 3 voice"], 8),
        abjad.select.leaf(score["violin 3 voice"], 14),
        abjad.select.leaf(score["violin 3 voice"], 23),
    ],
):
    trinton.dashed_slur(
        start_selection=start,
        stop_selection=stop,
    )

for voice_name, leaves in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        [
            4,
            13,
        ],
        [
            3,
            13,
            14,
        ],
        [
            4,
            16,
        ],
    ],
):

    trinton.attach_multiple(
        score=score,
        voice=voice_name,
        leaves=leaves,
        attachments=[abjad.Articulation("staccato"), abjad.Articulation("marcato")],
    )

for voice_name, leaves in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        [
            6,
            8,
            15,
        ],
        [
            16,
            17,
        ],
        [
            19,
        ],
    ],
):

    trinton.attach_multiple(
        score=score,
        voice=voice_name,
        leaves=leaves,
        attachments=[abjad.Articulation("tenuto"), abjad.Articulation("marcato")],
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
        24,
    ],
    stop_slur=[
        25,
    ],
)

trinton.write_text_span(
    voice=score["violin 2 voice"],
    begin_text=r'\markup \italic "XSB, approx. 3 clicks per s."',
    end_text=r"\markup \italic { NB }",
    start_leaf=[
        25,
    ],
    stop_leaf=[
        29,
    ],
    padding=3,
)

for number in list(range(30, 83)):
    if number % 2 == 1:
        abjad.attach(
            abjad.Articulation("upbow"),
            abjad.select.leaf(score["violin 2 voice"], number),
        )

    else:
        abjad.attach(
            abjad.Articulation("downbow"),
            abjad.select.leaf(score["violin 2 voice"], number),
        )

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[30],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "As full bows as possible" 1', "after"
    ),
)

for number in list(range(84, 115)):
    abjad.attach(
        abjad.Glissando(),
        abjad.select.leaf(score["violin 2 voice"], number),
    )

trinton.ficta(
    score=score,
    voice="violin 2 voice",
    start_ficta=[
        84,
    ],
    stop_ficta=[
        115,
    ],
)

trinton.write_text_span(
    voice=score["violin 2 voice"],
    begin_text=r"\markup \italic { NB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        84,
    ],
    stop_leaf=[
        105,
    ],
    padding=15,
)

trinton.ottava(
    score=score,
    voice="violin 1 voice",
    start_ottava=[
        10,
    ],
    stop_ottava=[
        11,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="violin 3 voice",
    start_ottava=[
        13,
    ],
    stop_ottava=[
        14,
    ],
    octave=1,
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        0,
        16,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach(
    voice=score["violin 1 voice"],
    leaves=[
        2,
        18,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["violin 3 voice"],
    leaves=[
        6,
        10,
    ],
    attachment=abjad.StartHairpin("o<|"),
    direction=abjad.UP
)

trinton.attach(
    voice=score["violin 3 voice"],
    leaves=[
        8,
        14,
    ],
    attachment=abjad.Dynamic("f"),
    direction=abjad.UP
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        21,
        84,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        30,
        105,
    ],
    attachment=abjad.Dynamic("ffff"),
)

trinton.make_sc_file(score=score, tempo=((1, 4), 69), current_directory="/Users/trintonprater/scores/verge/verge/segments/07")

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/07",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
