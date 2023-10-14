Weights ← &i "data/mnist_weights_e100.ua"

# Layer One - (256, 784)
FconeWeightUnrolled ← use "FconeWeight" Weights
FconeBiasUnrolled ← use "FconeBias" Weights
FconeWeight ← ↯ 256_784 FconeWeightUnrolled 1
FconeBias ← FconeBiasUnrolled 1

# Layer Two - (128, 256)
FctwoWeightUnrolled ← use "FctwoWeight" Weights
FctwoBiasUnrolled ← use "FctwoBias" Weights
FctwoWeight ← ↯ 128_256 FctwoWeightUnrolled 1
FctwoBias ← FctwoBiasUnrolled 1

# Layer Three - (64,128)
FcthreeWeightUnrolled ← use "FcthreeWeight" Weights
FcthreeBiasUnrolled ← use "FcthreeBias" Weights
FcthreeWeight ← ↯ 64_128 FcthreeWeightUnrolled 1
FcthreeBias ← FcthreeBiasUnrolled 1

# Layer Four - (10, 64)
FcfourWeightUnrolled ← use "FcfourWeight" Weights
FcfourBiasUnrolled ← use "FcfourBias" Weights
FcfourWeight ← ↯ 10_64 FcfourWeightUnrolled 1
FcfourBias ← FcfourBiasUnrolled 1

E ← 2.71828182
ReLU ← ↥ 0
SoftMax ← ÷ /+. ⁿ ∶ E

Image ← ↯ 28_28 ↙ 1 ⍉ ⍉ &imd &frab "data/img_98.jpg"

&ims Image

LOne ← ReLU + FconeBias /+× ♭ Image ⍉ FconeWeight
LTwo ← ReLU + FctwoBias /+× LOne ⍉ FctwoWeight
LThree ← ReLU + FcthreeBias /+× LTwo ⍉ FcthreeWeight
LFour ← ReLU + FcfourBias /+× LThree ⍉ FcfourWeight
↙ 1 ⍖ SoftMax LFour
