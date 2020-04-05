optionA <- read.csv("data-raw/optionA.csv")
optionA$opt <- "A"
optionB <- read.csv("data-raw/optionB.csv")
optionB$opt <- "B"
optionC <- read.csv("data-raw/optionC.csv")
optionC$opt <- "C"
optionD <- read.csv("data-raw/optionD.csv")
optionD$opt <- "D"
optionE <- read.csv("data-raw/optionE.csv")
optionE$opt <- "E"
optionF <- read.csv("data-raw/optionF.csv")
optionF$opt <- "F"
optionG <- read.csv("data-raw/optionG.csv")
optionG$opt <- "G"
aang <- read.csv("data-raw/aang.csv")
aang$opt <- "H"
adrift <- read.csv("data-raw/adrift.csv")
adrift$opt <- "I"
anxiety <- read.csv("data-raw/anxiety.csv")
anxiety$opt <- "J"
castle <- read.csv("data-raw/castle.csv")
castle$opt <- "K"
cherrybomb <- read.csv("data-raw/cherrybomb.csv")
cherrybomb$opt <- "L"
compatible <- read.csv("data-raw/compatible.csv")
compatible$opt <- "M"
conversation <- read.csv("data-raw/conversation.csv")
conversation$opt <- "N"
cyberbullies <- read.csv("data-raw/cyberbullies.csv")
cyberbullies$opt <- "O"
dreama <- read.csv("data-raw/dreama.csv")
dreama$opt <- "P"
drive <- read.csv("data-raw/drive.csv")
drive$opt <- "Q"
goldfish <- read.csv("data-raw/goldfish.csv")
goldfish$opt <- "R"
guidance <- read.csv("data-raw/guidance.csv")
guidance$opt <- "S"
herduliekmudkipz <- read.csv("data-raw/herduliekmudkipz.csv")
herduliekmudkipz$opt <- "T"
highfashion <- read.csv("data-raw/highfashion.csv")
highfashion$opt <- "U"
influenza <- read.csv("data-raw/influenza.csv")
influenza$opt <- "V"
latenight <- read.csv("data-raw/latenight.csv")
latenight$opt <- "W"
likeyou <- read.csv("data-raw/likeyou.csv")
likeyou$opt <- "X"
magneto <- read.csv("data-raw/magneto.csv")
magneto$opt <- "Y"
mardigras <- read.csv("data-raw/mardigras.csv")
mardigras$opt <- "Z"
navy <- read.csv("data-raw/navy.csv")
navy$opt <- "AA"
omniferous <- read.csv("data-raw/omniferous.csv")
omniferous$opt <- "BB"
papergirls <- read.csv("data-raw/papergirls.csv")
papergirls$opt <- "CC"
pinimg <- read.csv("data-raw/pinimg.csv")
pinimg$opt <- "DD"
rambling <- read.csv("data-raw/rambling.csv")
rambling$opt <- "EE"
saltwater <- read.csv("data-raw/saltwater.csv")
saltwater$opt <- "FF"
skateboardsoda <- read.csv("data-raw/skateboardsoda.csv")
skateboardsoda$opt <- "GG"
spillzone <- read.csv("data-raw/spillzone.csv")
spillzone$opt <- "HH"
stories <- read.csv("data-raw/stories.csv")
stories$opt <- "II"
sweetchill <- read.csv("data-raw/sweetchill.csv")
sweetchill$opt <- "JJ"
thrawn <- read.csv("data-raw/thrawn.csv")
thrawn$opt <- "KK"
tmnt <- read.csv("data-raw/tmnt.csv")
tmnt$opt <- "LL"
toutsuite <- read.csv("data-raw/toutsuite.csv")
toutsuite$opt <- "MM"
uc <- read.csv("data-raw/uc.csv")
uc$opt <- "NN"
uf <- read.csv("data-raw/uf.csv")
uf$opt <- "OO"
utrgv <- read.csv("data-raw/utrgv.csv")
utrgv$opt <- "PP"



viridis.map <- rbind(optionA, optionB, optionC, optionD, optionE, optionF,
                     optionG, aang, adrift, anxiety, castle, cherrybomb, compatible,
                     conversation, cyberbullies, dreama, drive, goldfish, guidance,
                     herduliekmudkipz, highfashion, influenza, latenight, likeyou,
                     magneto, mardigras, navy, omniferous, papergirls, pinimg, rambling,
                     saltwater, skateboardsoda, spillzone, stories, sweetchill,
                     thrawn, tmnt, toutsuite, uc, uf, utrgv)

devtools::use_data(viridis.map, overwrite = TRUE)

