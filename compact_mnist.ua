W ← &i "data/mnist_weights_e100.ua"
AV ← use "AV" W
ABV ← use "ABV" W
BV ← use "BV" W
BBV ← use "BBV" W
CV ← use "CV" W
CBV ← use "CBV" W
DV ← use "DV" W
DBV ← use "DBV" W
↙ 1 ⍖ + DBV 1 /+× ∶ ⍉ ↯ 10_64 DV 1 + CBV 1 /+× ∶ ⍉ ↯ 64_128 CV 1 + BBV 1 /+× ∶ ⍉ ↯ 128_256 BV 1 + ABV 1 /+× ♭ ∶ ⍉ ∶ ↯ 28_28 ↙ 1 ⍉ ⍉ &imd &frab "data/img_9969.jpg" ↯ 256_784 AV 1