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
    ],
    score["Global Context"],
)

# rhythm

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[abjad.Skip((1, 1), multiplier=_) for _ in [
            (3, 4),
            (5, 4),
            (7, 4),
            (6, 4),
            (5, 4),
        ]]
    )

verge.stirring_rhythms(
    score=score,
    voice_name="violin 2 voice",
    durations=[(8, 4), (13, 4), (5, 4),],
    divisions=[16, 8, 32,],
    index=0
)

# global attachments

trinton.attach(
    voice=score["Global Context"],
    leaves=[0],
    attachment=abjad.MetronomeMark((1, 4), 47)
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[-1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", format_slot="absolute_after"
        ),
        abjad.BarLine("|.")
    ]
)

# meter rewriting and beaming

trinton.rewrite_meter(score)

# trinton.annotate_leaves(score)

trinton.beam_score(score)

# pitching

for measures, string, index in zip(
    [
        [1, 2,],
        [3, 4,],
        [5,],
    ],
    [
        "III",
        "IV",
        "I",
    ],
    [
        0,
        2,
        3,
    ]
):
    verge.pitch_stirring(
        voice=score["violin 2 voice"],
        measures=measures,
        selector=baca.selectors.pleaves(),
        string=string,
        index=index
    )

# attachments

trinton.glissando(
    score=score,
    voice="violin 2 voice",
    start_gliss=[3, 13, 21, 31,],
    stop_gliss=[5, 14, 22, 33,],
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        0,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB, 1/2 CLT" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        5,
        12,
        20,
        27,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "CLT" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[
        8,
        18,
        21,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "1/2 CLT" 1', format_slot="after"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[0, 7, 12, 22, 27, 33,],
    attachment=abjad.Dynamic("ppp"),
)

trinton.attach(
    voice=score["violin 2 voice"],
    leaves=[5, 11, 21, 25, 29,],
    attachment=abjad.Dynamic("mp"),
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/segments/08",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
