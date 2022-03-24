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
        (5, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (7, 4),
        (1, 4),
        (1, 2),
        (1, 3),
        (1, 5),
        (1, 4),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        6,
        7,
        8,
        9,
    ]
)

# rhythm

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
    ],
)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip("r2."),
            abjad.Skip("r2"),
            abjad.Skip("r2."),
            abjad.Skip("r2"),
        ],
    )

for voice_name, index, selector in zip(
    [
        "violin 1 voice",
        "violin 2 voice",
        "violin 3 voice",
    ],
    [
        0,
        1,
        2,
    ],
    [
        trinton.select_leaves_by_index(
            [
                1,
            ]
        ),
        trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ],
):
    verge.arcana_rhythms(
        score=score,
        voice_name=voice_name,
        durations=[(3, 4)],
        index=index,
        rest_selector=selector,
    )

string = "r8 c'8~ c'4 r4 c'8 r16 c'1~ c'16 r4 c'2 c'32 c'32 r8 c'32 c'32 r16 c'8."
score["violin 2 voice"].extend(string)

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[abjad.Skip((1, 1), multiplier=_) for _ in [(5, 4), (7, 4), (1, 4)]],
    )

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Skip((1, 1), multiplier=_) for _ in [(1, 2), (1, 3), (1, 5), (1, 4)]],
)

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[(1, 4), (1, 5), (1, 3), (1, 2)],
)

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[(1, 2), (1, 3), (1, 5), (1, 4)],
)

for voice_name in ["violin 1 voice", "violin 2 voice", "violin 3 voice"]:
    trinton.append_rests(score=score, voice=voice_name, rests=[abjad.Skip("r4")])


# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 4), 77),
        abjad.MetronomeMark((1, 4), 69),
        abjad.MetronomeMark((1, 4), 47),
        abjad.MetronomeMark((1, 4), 105),
    ],
    [
        0,
        2,
        3,
        6,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=met)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        7,
    ],
    attachment=abjad.LilyPondLiteral(r"\break", "before"),
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

for number, string in zip([0, 1], ["11:10", "23:20"]):
    abjad.override(
        abjad.select.tuplet(score["violin 2 voice"], number)
    ).TupletNumber.text = abjad.Markup(rf"\markup \italic {string}")

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
    ],
)

# trinton.annotate_leaves(score)

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        40,
        48,
    ],
    stop_beam=[
        42,
        55,
    ],
    beam_rests=True,
)

# pitching

octave_handler = evans.PitchHandler(pitch_list=[[-3, 9]], forget=False)

octave_handler(
    trinton.make_leaf_selection(
        score=score, voice="violin 2 voice", leaves=list(range(0, 33))
    )
)

verge.pitch_arcana(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
        score["violin 3 voice"],
    ],
    measures=[
        3,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

verge.octave_up([abjad.select.leaf(score["violin 3 voice"], 5)])

verge.pitch_earthen(
    voice=score["violin 2 voice"],
    measures=[
        4,
        5,
        6,
    ],
    selector=verge.subharmonic_selector(),
    string="IV",
    seed=12,
    index=3,
)

verge.pitch_earthen(
    voice=score["violin 2 voice"],
    measures=[
        4,
        5,
    ],
    selector=verge.wrapping_selector(),
    string="wrapping",
    seed=7,
    index=2,
)

verge.pitch_conjuring(
    voice=score["violin 2 voice"],
    measures=[
        7,
        8,
        9,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

verge.pitch_conjuring(
    voice=score["violin 3 voice"],
    measures=[7, 8, 9, 10],
    selector=baca.selectors.pleaves(),
    index=0,
)

# attachments

for number in list(range(0, 33)):
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
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "As full bows as possible" 1', "after"
    ),
)

for start, stop in zip(
    [
        abjad.select.leaf(score["violin 1 voice"], 4),
        abjad.select.leaf(score["violin 2 voice"], 33),
        abjad.select.leaf(score["violin 3 voice"], 4),
    ],
    [
        abjad.select.leaf(score["violin 1 voice"], 6),
        abjad.select.leaf(score["violin 2 voice"], 35),
        abjad.select.leaf(score["violin 3 voice"], 5),
    ],
):
    trinton.dashed_slur(
        start_selection=start,
        stop_selection=stop,
    )

verge.four_lines(
    score=score,
    voice="violin 2 voice",
    leaves=[
        40,
        48,
    ],
)

verge.five_lines(
    score=score,
    voice="violin 2 voice",
    leaves=[
        42,
        55,
    ],
)

wrapping = abjad.LilyPondLiteral(r'\boxed-markup "DP, wrapping" 1', "after")
abjad.tweak(wrapping).padding = 5

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        40,
        48,
    ],
    attachment=wrapping,
)

ord = abjad.LilyPondLiteral(r'\boxed-markup "Ord." 1', "after")
abjad.tweak(ord).padding = 5

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        42,
        55,
    ],
    attachment=ord,
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        37,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "XSB" 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        56,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', "after"),
)

trinton.attach(
    voice=score["violin 2 voice"], leaves=[0], attachment=abjad.Dynamic("fff")
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        37,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        33,
        56,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        33,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        34,
    ],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin(">o"),
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        35,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        56,
        58,
    ],
    stop_slur=[
        57,
        59,
    ],
)

trinton.write_slur(
    voice=score["violin 3 voice"],
    start_slur=[
        12,
    ],
    stop_slur=[
        13,
    ],
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"\markup {IV}",
    start_leaf=[
        42,
    ],
    stop_leaf=[
        48,
    ],
    padding=15.5,
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"\markup {IV}",
    start_leaf=[
        37,
    ],
    stop_leaf=[
        39,
    ],
    padding=8,
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"\markup {IV}",
    start_leaf=[
        55,
    ],
    stop_leaf=[
        56,
    ],
    padding=12,
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/01",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
