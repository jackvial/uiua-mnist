W ← &i "data/mnist_weights_e100.ua"
AV ← use "AV" W
ABV ← use "ABV" W
A ← ↯ 256_784 AV 1
AB ← ABV 1

BV ← use "BV" W
BBV ← use "BBV" W
B ← ↯ 128_256 BV 1
BB ← BBV 1

CV ← use "CV" W
CBV ← use "CBV" W
C ← ↯ 64_128 CV 1
CB ← CBV 1

DV ← use "DV" W
DBV ← use "DBV" W
D ← ↯ 10_64 DV 1
DB ← DBV 1

Image ← ↯ 28_28 ↙ 1 ⍉ ⍉ &imd &frab "data/img_7635.jpg"
&ims Image

X ← ↥ 0 + AB /+× ♭ Image ⍉ A
X ← ↥ 0 + BB /+× X ⍉ B
X ← ↥ 0 + CB /+× X ⍉ C
X ← ↥ 0 + DB /+× X ⍉ D
↙ 1 ⍖ ÷ /+. ⁿ ∶ 2.71828182 X
