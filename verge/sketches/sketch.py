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
    ],
    score["Global Context"],
)

# test

for voice_name in ["violin 1 voice", "violin 3 voice"]:
    trinton.append_rests(
        score=score, voice=voice_name, rests=[abjad.Rest("r2."), abjad.Rest("r2")]
    )

verge.stirring_rhythms(
    score=score,
    voice_name="violin 2 voice",
    durations=[(1, 8), (5, 8), (1, 2)],
    divisions=[64, 16, 32],
    index=3,
)

trinton.rewrite_meter(score)

trinton.beam_score(score)

# trinton.annotate_leaves(score)

verge.pitch_stirring(
    voice=score["violin 2 voice"],
    measures=[
        1,
    ],
    selector=baca.selectors.pleaves(),
    string="III",
    index=5,
)

trinton.write_hooked_spanner(
    voice=score["violin 2 voice"],
    string=r"III",
    start_leaf=[0],
    stop_leaf=[-1],
    padding=6,
)

for tie in abjad.Selection(score["violin 2 voice"]).logical_ties():
    abjad.attach(
        abjad.LilyPondLiteral(r"- \baca-circle-markup", format_slot="after"), tie[0]
    )

trinton.glissando(
    score=score,
    voice="violin 2 voice",
    start_gliss=[
        0,
        3,
        4,
        5,
    ],
    stop_gliss=[
        2,
        4,
        5,
        6,
    ],
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/verge/verge/sketches",
    build_path="/Users/trintonprater/scores/verge/verge/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/verge/verge/build/verge_stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)
