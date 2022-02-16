import abjad
import baca
import evans
import trinton
import verge
import random
from abjadext import rmakers
from abjadext import microtones

# score and voice variables

score = trinton.make_score_template(
    [
        abjad.Violin(),
        abjad.Violin(),
        abjad.Violin(),
    ],
    [
        1,
        1,
        1,
    ],
)

violin_1_voice = score["violin 1 voice"]

violin_2_voice = score["violin 2 voice"]

violin_3_voice = score["violin 3 voice"]

# rhythm tools



# pitch tools
