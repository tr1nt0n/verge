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
        (1, 9),
        (5, 8),
        (3, 7),
        (5, 16),
        (1, 4),
    ],
    score["Global Context"],
)

verge.blank_time_signature(
    measures=[
        0,
        1,
        2,
        3,
    ]
)

# rhythm

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip((1, 1), multiplier=_)
            for _ in [
                (1, 9),
                (5, 8),
                (3, 7),
                (5, 16),
                (1, 4),
            ]
        ],
    )

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (1, 9),
        (5, 8),
        (3, 7),
    ],
)

string = "c'16 c'16 c'16 r16. c'32"

score["violin 2 voice"].extend(string)

trinton.append_rests(score=score, voice="violin 2 voice", rests=[abjad.Skip("r4")])


# global attachments

for met, leaf in zip(
    [
        abjad.MetronomeMark((1, 4), 69),
        abjad.MetronomeMark((1, 16), 420),
    ],
    [
        0,
        3,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=met)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \halign #-2.5 \abs-fontsize #8.5 { Accel. }",
    end_text=r"\markup { . }",
    start_leaf=[
        0,
    ],
    stop_leaf=[
        3,
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
#
trinton.attach(
    voice=score["Global Context"],
    leaves=[
        -1,
    ],
    attachment=abjad.BarLine("||"),
)

# meter rewriting and beaming

# trinton.annotate_leaves(score)

trinton.beam_runs_by_selection(
    score=score,
    voice="violin 2 voice",
    start_beam=[
        4,
    ],
    stop_beam=[
        8,
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
    ],
    selector=baca.selectors.pleaves(),
    index=51,
)

verge.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            1,
            2,
        ],
    )
)

verge.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="violin 2 voice",
        leaves=[
            3,
        ],
    )
)

verge.pitch_earthen(
    voice=score["violin 2 voice"],
    measures=[
        4,
    ],
    selector=baca.selectors.pleaves(),
    string="wrapping",
    seed=1,
    index=21,
)

# attachments

verge.four_lines(
    score=score,
    voice="violin 2 voice",
    leaves=[
        4,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[0],
    attachments=[
        abjad.Articulation(">"),
        abjad.Articulation("staccato"),
        abjad.Dynamic("pp"),
        abjad.StartHairpin("<"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[2],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.StartHairpin(">"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="violin 2 voice",
    leaves=[
        4,
    ],
    attachments=[
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(r'\boxed-markup "DP, wrapping" 1', "after"),
    ],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        5,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.write_slur(
    voice=score["violin 2 voice"],
    start_slur=[
        1,
    ],
    stop_slur=[
        3,
    ],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
    ],
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/05",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
