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
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ],
    score["Global Context"],
)

# test

# rhythms

for voice_name in [
    "violin 3 voice",
    "violin 2 voice",
]:
    trinton.handwrite(
        score=score,
        voice=voice_name,
        durations=[
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
        ],
        pitch_list=None,
    )

trinton.append_rests(
    score=score,
    voice="violin 1 voice",
    rests=[
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
    ],
)

verge.pitch_conjuring(
    voice=verge.violin_2_voice,
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

verge.pitch_conjuring(
    voice=verge.violin_3_voice,
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
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
