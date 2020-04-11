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
anxiety <- read.csv("data-raw/anxiety.csv")
anxiety$opt <- "H"
castle <- read.csv("data-raw/castle.csv")
castle$opt <- "I"
deepriver <- read.csv("data-raw/deepriver.csv")
deepriver$opt <- "J"
forests <- read.csv("data-raw/forests.csv")
forests$opt <- "K"
guidance <- read.csv("data-raw/guidance.csv")
guidance$opt <- "L"
influenza <- read.csv("data-raw/influenza.csv")
influenza$opt <- "M"
mardigras <- read.csv("data-raw/mardigras.csv")
mardigras$opt <- "N"
vaporwave <- read.csv("data-raw/vaporwave.csv")
vaporwave$opt <- "O"
toutsuite <- read.csv("data-raw/toutsuite.csv")
toutsuite$opt <- "P"
uc <- read.csv("data-raw/uc.csv")
uc$opt <- "Q"
utrgv <- read.csv("data-raw/utrgv.csv")
utrgv$opt <- "R"



viridis.map <- rbind(optionA, optionB, optionC, optionD, optionE, optionF,
                     optionG, anxiety, castle, deepriver, forests, guidance,
                     influenza, mardigras, vaporwave, toutsuite, uc, utrgv)

usethis::use_data(viridis.map, overwrite = TRUE)

