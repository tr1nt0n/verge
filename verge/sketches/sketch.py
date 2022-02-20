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
        (6, 8),
    ],
    score["Global Context"],
)

# test

verge.arcana_rhythms(
    score=score,
    voice_name="violin 1 voice",
    durations=[(3, 4)],
    index=18,
    rest_selector=trinton.select_logical_ties_by_index([0, 1, 2,]),
)

verge.arcana_rhythms(
    score=score,
    voice_name="violin 2 voice",
    durations=[(3, 4)],
    index=18,
    rest_selector=trinton.select_logical_ties_by_index([2,]),
)

verge.arcana_rhythms(
    score=score,
    voice_name="violin 3 voice",
    durations=[(3, 4)],
    index=19,
    rest_selector=trinton.select_logical_ties_by_index([0, 1, 2, 4,]),
)

verge.pitch_arcana(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
        score["violin 3 voice"],
    ],
    measures=[1],
    selector=baca.selectors.pleaves(),
    index=0
)

for voice_name in ["violin 1 voice", "violin 2 voice"]:
    trinton.dashed_slur(
        start_selection=abjad.Selection(score[voice_name]).leaves(pitched=True)[0],
        stop_selection=abjad.Selection(score[voice_name]).leaves(pitched=True)[-1],
    )

# global attachments

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
