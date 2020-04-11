#Making the color scales in RGB so that we can co-opt the viridisLite machinery
#this bit is hacky/disturbingly brute force at best but gets the job done (for now)
#I stole these colors from various places, ill try to keep track
#when presented with >3, I just pick the 3 I like, and might reorder them
#https://i.redd.it/xciqfhjxu1q41.jpg
#then i used https://imagecolorpicker.com/en/ to try to figure out hte hex
# I have in some cases completely thrown out the original color swatch in favor of handpicked colors
n=256

#anxiety
anxiety = c("#9e0654", "#c99608","#11e8c4")
anxiety.pal <- colorRamp(anxiety)
anxiety.pal <- anxiety.pal(seq(0, 1, len = n))/n
colnames(anxiety.pal) <- c("R", "G", "B")
write.csv(anxiety.pal, file = "data-raw/anxiety.csv",row.names = F)
#god help us all if this is the best I can do...
#rinse and repeat ad nauseum

#vaporwave
vaporwave = c("#8d0883", "#497bc5","#10e7f7")
vaporwave.pal <- colorRamp(vaporwave)
vaporwave.pal <- vaporwave.pal(seq(0, 1, len = n))/n
colnames(vaporwave.pal) <- c("R", "G", "B")
write.csv(vaporwave.pal, file = "data-raw/vaporwave.csv",row.names = F)

#guidance
guidance = c("#004f42","#386a6c","#a58347","#ffb300")
guidance.pal <- colorRamp(guidance)
guidance.pal <- guidance.pal(seq(0, 1, len = n))/n
colnames(guidance.pal) <- c("R", "G", "B")
write.csv(guidance.pal, file = "data-raw/guidance.csv",row.names = F)
#
# #rambling
# rambling = c("#f98987", "#fde6be","#84cafb")
# rambling.pal <- colorRamp(rambling)
# rambling.pal <- rambling.pal(seq(0, 1, len = n))/n
# colnames(rambling.pal) <- c("R", "G", "B")
# write.csv(rambling.pal, file = "data-raw/rambling.csv",row.names = F)

# #sweetchill
# sweetchill = c("#343432", "#9082c8","#e4e8e5")
# sweetchill.pal <- colorRamp(sweetchill)
# sweetchill.pal <- sweetchill.pal(seq(0, 1, len = n))/n
# colnames(sweetchill.pal) <- c("R", "G", "B")
# write.csv(sweetchill.pal, file = "data-raw/sweetchill.csv",row.names = F)
#
# #saltwater
# saltwater = c("#d5f4b9", "#47a681","#396d70")
# saltwater.pal <- colorRamp(saltwater)
# saltwater.pal <- saltwater.pal(seq(0, 1, len = n))/n
# colnames(saltwater.pal) <- c("R", "G", "B")
# write.csv(saltwater.pal, file = "data-raw/saltwater.csv",row.names = F)
#
# #highfashion
# highfashion = c("#9c69ae", "#ef9184","#fbe157")
# highfashion.pal <- colorRamp(highfashion)
# highfashion.pal <- highfashion.pal(seq(0, 1, len = n))/n
# colnames(highfashion.pal) <- c("R", "G", "B")
# write.csv(highfashion.pal, file = "data-raw/highfashion.csv",row.names = F)

#castle #k
castle = c("#fa0ea7", "#faaf0e","#0efcb5")
castle.pal <- colorRamp(castle)
castle.pal <- castle.pal(seq(0, 1, len = n))/n
colnames(castle.pal) <- c("R", "G", "B")
write.csv(castle.pal, file = "data-raw/castle.csv",row.names = F)
#
# #likeyou
# likeyou = c("#72fa5e", "#faf45f","#fb9154")
# likeyou.pal <- colorRamp(likeyou)
# likeyou.pal <- likeyou.pal(seq(0, 1, len = n))/n
# colnames(likeyou.pal) <- c("R", "G", "B")
# write.csv(likeyou.pal, file = "data-raw/likeyou.csv",row.names = F)

# #omniferous
# omniferous = c("#e7f1b1", "#c59a79","#ba2f88")
# omniferous.pal <- colorRamp(omniferous)
# omniferous.pal <- omniferous.pal(seq(0, 1, len = n))/n
# colnames(omniferous.pal) <- c("R", "G", "B")
# write.csv(omniferous.pal, file = "data-raw/omniferous.csv",row.names = F)

#deepriver
deepriver = c("#0d03fb", "#5283f4","#93fbda")
deepriver.pal <- colorRamp(deepriver)
deepriver.pal <- deepriver.pal(seq(0, 1, len = n))/n
colnames(deepriver.pal) <- c("R", "G", "B")
write.csv(deepriver.pal, file = "data-raw/deepriver.csv",row.names = F)
#
# #conversation
# conversation = c("#316140", "#5a70a8","#ab68d4","#ff75d6")
# conversation.pal <- colorRamp(conversation)
# conversation.pal <- conversation.pal(seq(0, 1, len = n))/n
# colnames(conversation.pal) <- c("R", "G", "B")
# write.csv(conversation.pal, file = "data-raw/conversation.csv",row.names = F)
#
# #herduliekmudkipz
# herduliekmudkipz = c("#704c35", "#ada061","#82e076","#76a6ff")
# herduliekmudkipz.pal <- colorRamp(herduliekmudkipz)
# herduliekmudkipz.pal <- herduliekmudkipz.pal(seq(0, 1, len = n))/n
# colnames(herduliekmudkipz.pal) <- c("R", "G", "B")
# write.csv(herduliekmudkipz.pal, file = "data-raw/herduliekmudkipz.csv",row.names = F)
#
# #pinimg
# pinimg = c("#0c0636", "#059b9a","#9fd96b")
# pinimg.pal <- colorRamp(pinimg)
# pinimg.pal <- pinimg.pal(seq(0, 1, len = n))/n
# colnames(pinimg.pal) <- c("R", "G", "B")
# write.csv(pinimg.pal, file = "data-raw/pinimg.csv",row.names = F)
#
# #latenight
# latenight = c("#0d505a", "#1aa0b3","#9d168c")
# latenight.pal <- colorRamp(latenight)
# latenight.pal <- latenight.pal(seq(0, 1, len = n))/n
# colnames(latenight.pal) <- c("R", "G", "B")
# write.csv(latenight.pal, file = "data-raw/latenight.csv",row.names = F)
#
# #prismatic #L
# prismatic = c("#1636ee","#1f4bee","#0488ba","#29cf8a","#b1d047", "#fbb81c", "#fa9812", "#f1631b")
# prismatic.pal <- colorRamp(prismatic)
# prismatic.pal <- prismatic.pal(seq(0, 1, len = n))/n
# colnames(prismatic.pal) <- c("R", "G", "B")
# write.csv(prismatic.pal, file = "data-raw/prismatic.csv",row.names = F)
#
# #spillzone
# spillzone = c("#3d7fa2", "#e72e2c")
# spillzone.pal <- colorRamp(spillzone)
# spillzone.pal <- spillzone.pal(seq(0, 1, len = n))/n
# colnames(spillzone.pal) <- c("R", "G", "B")
# write.csv(spillzone.pal, file = "data-raw/spillzone.csv",row.names = F)
#
# #papergirls
# papergirls = c("#fb6ba0", "#6bc3f3")
# papergirls.pal <- colorRamp(papergirls)
# papergirls.pal <- papergirls.pal(seq(0, 1, len = n))/n
# colnames(papergirls.pal) <- c("R", "G", "B")
# write.csv(papergirls.pal, file = "data-raw/papergirls.csv",row.names = F)
#
# #aang
# aang = c("#d3523d", "#fdbb64","#8cabca")
# aang.pal <- colorRamp(aang)
# aang.pal <- aang.pal(seq(0, 1, len = n))/n
# colnames(aang.pal) <- c("R", "G", "B")
# write.csv(aang.pal, file = "data-raw/aang.csv",row.names = F)
#
# #magneto
# magneto = c("#2b0466", "#9230a1","#d91d0f","#ff5d9e")
# magneto.pal <- colorRamp(magneto)
# magneto.pal <- magneto.pal(seq(0, 1, len = n))/n
# colnames(magneto.pal) <- c("R", "G", "B")
# write.csv(magneto.pal, file = "data-raw/magneto.csv",row.names = F)
#
# #thrawn
# thrawn = c("#cd4540", "#438aa8")
# thrawn.pal <- colorRamp(thrawn)
# thrawn.pal <- thrawn.pal(seq(0, 1, len = n))/n
# colnames(thrawn.pal) <- c("R", "G", "B")
# write.csv(thrawn.pal, file = "data-raw/thrawn.csv",row.names = F)
#
# #drive #Q
# drive = c("#296e0e", "#7a8a11","#b9a648","#fd8f83")
# drive.pal <- colorRamp(drive)
# drive.pal <- drive.pal(seq(0, 1, len = n))/n
# colnames(drive.pal) <- c("R", "G", "B")
# write.csv(drive.pal, file = "data-raw/drive.csv",row.names = F)
#
# #tmnt
# tmnt = c("#1ca1e3", "#b197c7","#fc9c58","#e64233")
# tmnt.pal <- colorRamp(tmnt)
# tmnt.pal <- tmnt.pal(seq(0, 1, len = n))/n
# colnames(tmnt.pal) <- c("R", "G", "B")
# write.csv(tmnt.pal, file = "data-raw/tmnt.csv",row.names = F)
#
# ####
#okay I wanted to make some figures that would match with school colors
#pulled colors from https://www.ucop.edu/initiatives/_files/carbon-neutrality-initiative/uc_CNI_branding.pdf
#UC
uc = c("#1295D8", "#FFB511")
uc.pal <- colorRamp(uc)
uc.pal <- uc.pal(seq(0, 1, len = n))/n
colnames(uc.pal) <- c("R", "G", "B")
write.csv(uc.pal, file = "data-raw/uc.csv",row.names = F)

#utrgv
utrgv = c("#F05023", "#646469")
utrgv.pal <- colorRamp(utrgv)
utrgv.pal <- utrgv.pal(seq(0, 1, len = n))/n
colnames(utrgv.pal) <- c("R", "G", "B")
write.csv(utrgv.pal, file = "data-raw/utrgv.csv",row.names = F)
#
# #navy
# navy = c("#00205B", "#C5B783")
# navy.pal <- colorRamp(navy)
# navy.pal <- navy.pal(seq(0, 1, len = n))/n
# colnames(navy.pal) <- c("R", "G", "B")
# write.csv(navy.pal, file = "data-raw/navy.csv",row.names = F)

# #uf
# uf = c("#FA4616", "#0021A5")
# uf.pal <- colorRamp(uf)
# uf.pal <- uf.pal(seq(0, 1, len = n))/n
# colnames(uf.pal) <- c("R", "G", "B")
# write.csv(uf.pal, file = "data-raw/uf.csv",row.names = F)


######
####random palettes from https://www.colourlovers.com/palette
#goldfish #r
# goldfish = c("#ed00a2", "#00ffcc")
# goldfish.pal <- colorRamp(goldfish)
# goldfish.pal <- goldfish.pal(seq(0, 1, len = n))/n
# colnames(goldfish.pal) <- c("R", "G", "B")
# write.csv(goldfish.pal, file = "data-raw/goldfish.csv",row.names = F)
#
# #adrift
# adrift = c("#0B486B", "#79BD9A","#CFF09E" )
# adrift.pal <- colorRamp(adrift)
# adrift.pal <- adrift.pal(seq(0, 1, len = n))/n
# colnames(adrift.pal) <- c("R", "G", "B")
# write.csv(adrift.pal, file = "data-raw/adrift.csv",row.names = F)
#
# #compatible #M
# compatible = c("#d12f62", "#ed8c16","#58fcee")
# compatible.pal <- colorRamp(compatible)
# compatible.pal <- compatible.pal(seq(0, 1, len = n))/n
# colnames(compatible.pal) <- c("R", "G", "B")
# write.csv(compatible.pal, file = "data-raw/compatible.csv",row.names = F)
#
# #stories
# stories = c("#F8B195", "#C06C84", "#355C7D")
# stories.pal <- colorRamp(stories)
# stories.pal <- stories.pal(seq(0, 1, len = n))/n
# colnames(stories.pal) <- c("R", "G", "B")
# write.csv(stories.pal, file = "data-raw/stories.csv",row.names = F)
#
#forests
forests = c("#1B676B", "#88C425", "#EAFDE6")
forests.pal <- colorRamp(forests)
forests.pal <- forests.pal(seq(0, 1, len = n))/n
colnames(forests.pal) <- c("R", "G", "B")
write.csv(forests.pal, file = "data-raw/forests.csv",row.names = F)

#influenza
influenza = c("#300030", "#b34552", "#ffb806")
influenza.pal <- colorRamp(influenza)
influenza.pal <- influenza.pal(seq(0, 1, len = n))/n
colnames(influenza.pal) <- c("R", "G", "B")
write.csv(influenza.pal, file = "data-raw/influenza.csv",row.names = F)

#toutsuite
toutsuite = c("#1E1E44", "#C4574E", "#E0CFA7")
toutsuite.pal <- colorRamp(toutsuite)
toutsuite.pal <- toutsuite.pal(seq(0, 1, len = n))/n
colnames(toutsuite.pal) <- c("R", "G", "B")
write.csv(toutsuite.pal, file = "data-raw/toutsuite.csv",row.names = F)

#mardigras
mardigras = c("#600F97", "#06BC40", "#F8B619")
mardigras.pal <- colorRamp(mardigras)
mardigras.pal <- mardigras.pal(seq(0, 1, len = n))/n
colnames(mardigras.pal) <- c("R", "G", "B")
write.csv(mardigras.pal, file = "data-raw/mardigras.csv",row.names = F)
