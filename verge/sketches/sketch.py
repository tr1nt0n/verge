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

verge.naiads_ii_rhythms(
    score=score,
    voice_names=["violin 1 voice", "violin 2 voice"],
    durations=[
        (5, 8),
        (5, 8),
    ],
    tuplets=verge.collapsing_tuplets_1,
    extra_counts=[0, 1],
)

verge.pitch_naiads(
    voices=[
        score["violin 1 voice"],
        score["violin 2 voice"],
    ],
    measures=[
        1,
    ],
    selector=baca.selectors.pleaves(),
    index=0,
)

trinton.append_rests(
    score=score,
    voice="violin 3 voice",
    rests=[
        abjad.Rest("r2"),
        abjad.Rest("r2."),
    ],
)

trinton.rewrite_meter(score)

trinton.beam_score(score)

trinton.attach(
    voice=score["violin 1 voice"], leaves=[0], attachment=abjad.Clef("percussion")
)

verge.four_lines(voice=score["violin 1 voice"], leaves=[0])

for tuplet in abjad.Selection(score["violin 2 voice"]).tuplets():
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic {6:5}")

for leaf in abjad.Selection(score["violin 2 voice"]).leaves().exclude([-1]):
    abjad.attach(abjad.Glissando(), leaf)

trinton.ottava(
    score=score,
    voice="violin 2 voice",
    start_ottava=[
        1,
        3,
    ],
    stop_ottava=[
        1,
        3,
    ],
    octave=1,
)

trinton.write_slur(
    voice=score["violin 1 voice"],
    start_slur=[
        0,
        3,
        6,
        10,
        13,
        16,
        19,
    ],
    stop_slur=[
        2,
        5,
        9,
        12,
        15,
        18,
        20,
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
