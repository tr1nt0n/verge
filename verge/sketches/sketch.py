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
        (1, 6),
        (1, 5),
        (1, 7),
        (1, 3),
        (3, 4),
        (1, 3),
        (1, 15),
        (1, 14),
        (1, 2),
        (1, 7),
        (1, 1),
    ],
    score["Global Context"],
)

verge.blank_time_signature()

# test

# rhythms

trinton.handwrite(
    score=score,
    voice="violin 2 voice",
    durations=[
        (1, 4),
        (1, 6),
        (1, 5),
        (1, 7),
        (1, 3),
        (3, 4),
        (1, 3),
        (1, 15),
        (1, 14),
        (1, 2),
        (1, 7),
        (1, 1),
    ],
    pitch_list=None,
)

trinton.handwrite(
    score=score,
    voice="violin 3 voice",
    durations=[
        (1, 1),
        (1, 7),
        (1, 2),
        (1, 14),
        (1, 15),
        (1, 3),
        (3, 4),
        (1, 3),
        (1, 7),
        (1, 5),
        (1, 6),
        (1, 4),
    ],
    pitch_list=None,
)

verge.pitch_conjuring(
    voice=verge.violin_2_voice,
    measures=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,],
    selector=baca.selectors.pleaves(),
    index=0
)

verge.pitch_conjuring(
    voice=verge.violin_3_voice,
    measures=[1, 2, 3, 4, 5, 6, ],
    selector=baca.selectors.pleaves(),
    index=1
)

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[abjad.Skip((1, 1), multiplier=(_)) for _ in [(1, 4), (1, 6), (1, 5), (1, 7), (1, 3), (3, 4), (1, 3), (1, 15), (1, 14), (1, 2), (1, 7), (1, 1),]]
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
