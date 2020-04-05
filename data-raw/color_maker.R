#Making the color scales in RGB so that we can co-opt the viridisLite machinery
#this bit is hacky/disturbingly brute force at best but gets the job done (for now)
#I stole these colors from various places, ill try to keep track
#when presented with >3, I just pick the 3 I like, and might reorder them
#https://i.redd.it/xciqfhjxu1q41.jpg
#then i used https://imagecolorpicker.com/en/ to try to figure out hte hex
n=256

#anxiety
anxiety = c("#21112c", "#24545d","#3e8f52")
anxiety.pal <- colorRamp(anxiety)
anxiety.pal <- anxiety.pal(seq(0, 1, len = n))/n
colnames(anxiety.pal) <- c("R", "G", "B")
write.csv(anxiety.pal, file = "data-raw/anxiety.csv",row.names = F)
#god help us all if this is the best I can do...
#rinse and repeat ad nauseum

#skateboardsoda
skateboardsoda = c("#8d0883", "#497bc5","#10e7f7")
skateboardsoda.pal <- colorRamp(skateboardsoda)
skateboardsoda.pal <- skateboardsoda.pal(seq(0, 1, len = n))/n
colnames(skateboardsoda.pal) <- c("R", "G", "B")
write.csv(skateboardsoda.pal, file = "data-raw/skateboardsoda.csv",row.names = F)

#guidance
guidance = c("#7b6741", "#a7b758","#fbeb7e")
guidance.pal <- colorRamp(guidance)
guidance.pal <- guidance.pal(seq(0, 1, len = n))/n
colnames(guidance.pal) <- c("R", "G", "B")
write.csv(guidance.pal, file = "data-raw/guidance.csv",row.names = F)

#rambling
rambling = c("#f98987", "#fde6be","#84cafb")
rambling.pal <- colorRamp(rambling)
rambling.pal <- rambling.pal(seq(0, 1, len = n))/n
colnames(rambling.pal) <- c("R", "G", "B")
write.csv(rambling.pal, file = "data-raw/rambling.csv",row.names = F)

#sweetchill
sweetchill = c("#343432", "#9082c8","#e4e8e5")
sweetchill.pal <- colorRamp(sweetchill)
sweetchill.pal <- sweetchill.pal(seq(0, 1, len = n))/n
colnames(sweetchill.pal) <- c("R", "G", "B")
write.csv(sweetchill.pal, file = "data-raw/sweetchill.csv",row.names = F)

#saltwater
saltwater = c("#d5f4b9", "#47a681","#396d70")
saltwater.pal <- colorRamp(saltwater)
saltwater.pal <- saltwater.pal(seq(0, 1, len = n))/n
colnames(saltwater.pal) <- c("R", "G", "B")
write.csv(saltwater.pal, file = "data-raw/saltwater.csv",row.names = F)

#highfashion
highfashion = c("#fbe157", "#ef9184","#9c69ae")
highfashion.pal <- colorRamp(highfashion)
highfashion.pal <- highfashion.pal(seq(0, 1, len = n))/n
colnames(highfashion.pal) <- c("R", "G", "B")
write.csv(highfashion.pal, file = "data-raw/highfashion.csv",row.names = F)

#castle
castle = c("#772b37", "#fac891","#86dbb6")
castle.pal <- colorRamp(castle)
castle.pal <- castle.pal(seq(0, 1, len = n))/n
colnames(castle.pal) <- c("R", "G", "B")
write.csv(castle.pal, file = "data-raw/castle.csv",row.names = F)

#likeyou
likeyou = c("#72fa5e", "#faf45f","#fb9154")
likeyou.pal <- colorRamp(likeyou)
likeyou.pal <- likeyou.pal(seq(0, 1, len = n))/n
colnames(likeyou.pal) <- c("R", "G", "B")
write.csv(likeyou.pal, file = "data-raw/likeyou.csv",row.names = F)

#omniferous
omniferous = c("#e7f1b1", "#c59a79","#ba2f88")
omniferous.pal <- colorRamp(omniferous)
omniferous.pal <- omniferous.pal(seq(0, 1, len = n))/n
colnames(omniferous.pal) <- c("R", "G", "B")
write.csv(omniferous.pal, file = "data-raw/omniferous.csv",row.names = F)

#cyberbullies
cyberbullies = c("#93fbda", "#5283f4","#0d03fb")
cyberbullies.pal <- colorRamp(cyberbullies)
cyberbullies.pal <- cyberbullies.pal(seq(0, 1, len = n))/n
colnames(cyberbullies.pal) <- c("R", "G", "B")
write.csv(cyberbullies.pal, file = "data-raw/cyberbullies.csv",row.names = F)

#conversation
conversation = c("#f70264", "#b7848e","#70fbb6")
conversation.pal <- colorRamp(conversation)
conversation.pal <- conversation.pal(seq(0, 1, len = n))/n
colnames(conversation.pal) <- c("R", "G", "B")
write.csv(conversation.pal, file = "data-raw/conversation.csv",row.names = F)

#herduliekmudkipz
herduliekmudkipz = c("#5ab4e6", "#3183c5","#ffb452")
herduliekmudkipz.pal <- colorRamp(herduliekmudkipz)
herduliekmudkipz.pal <- herduliekmudkipz.pal(seq(0, 1, len = n))/n
colnames(herduliekmudkipz.pal) <- c("R", "G", "B")
write.csv(herduliekmudkipz.pal, file = "data-raw/herduliekmudkipz.csv",row.names = F)

#pinimg
pinimg = c("#0c0636", "#059b9a","#9fd96b")
pinimg.pal <- colorRamp(pinimg)
pinimg.pal <- pinimg.pal(seq(0, 1, len = n))/n
colnames(pinimg.pal) <- c("R", "G", "B")
write.csv(pinimg.pal, file = "data-raw/pinimg.csv",row.names = F)

#latenight
latenight = c("#0d505a", "#1aa0b3","#9d168c")
latenight.pal <- colorRamp(latenight)
latenight.pal <- latenight.pal(seq(0, 1, len = n))/n
colnames(latenight.pal) <- c("R", "G", "B")
write.csv(latenight.pal, file = "data-raw/latenight.csv",row.names = F)

#cherrybomb
cherrybomb = c("#ff48fc", "#33fcff")
cherrybomb.pal <- colorRamp(cherrybomb)
cherrybomb.pal <- cherrybomb.pal(seq(0, 1, len = n))/n
colnames(cherrybomb.pal) <- c("R", "G", "B")
write.csv(cherrybomb.pal, file = "data-raw/cherrybomb.csv",row.names = F)

#spillzone
spillzone = c("#3d7fa2", "#e72e2c")
spillzone.pal <- colorRamp(spillzone)
spillzone.pal <- spillzone.pal(seq(0, 1, len = n))/n
colnames(spillzone.pal) <- c("R", "G", "B")
write.csv(spillzone.pal, file = "data-raw/spillzone.csv",row.names = F)

#papergirls
papergirls = c("#fb6ba0", "#6bc3f3")
papergirls.pal <- colorRamp(papergirls)
papergirls.pal <- papergirls.pal(seq(0, 1, len = n))/n
colnames(papergirls.pal) <- c("R", "G", "B")
write.csv(papergirls.pal, file = "data-raw/papergirls.csv",row.names = F)

#aang
aang = c("#d3523d", "#fdbb64","#8cabca")
aang.pal <- colorRamp(aang)
aang.pal <- aang.pal(seq(0, 1, len = n))/n
colnames(aang.pal) <- c("R", "G", "B")
write.csv(aang.pal, file = "data-raw/aang.csv",row.names = F)

####
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

#navy
navy = c("#00205B", "#C5B783")
navy.pal <- colorRamp(navy)
navy.pal <- navy.pal(seq(0, 1, len = n))/n
colnames(navy.pal) <- c("R", "G", "B")
write.csv(navy.pal, file = "data-raw/navy.csv",row.names = F)

#uf
uf = c("#FA4616", "#0021A5")
uf.pal <- colorRamp(uf)
uf.pal <- uf.pal(seq(0, 1, len = n))/n
colnames(uf.pal) <- c("R", "G", "B")
write.csv(uf.pal, file = "data-raw/uf.csv",row.names = F)


######
####random palettes from https://www.colourlovers.com/palette
#goldfish
goldfish = c("#69D2E7", "#E0E4CC", "#FA6900")
goldfish.pal <- colorRamp(goldfish)
goldfish.pal <- goldfish.pal(seq(0, 1, len = n))/n
colnames(goldfish.pal) <- c("R", "G", "B")
write.csv(goldfish.pal, file = "data-raw/goldfish.csv",row.names = F)

#adrift
adrift = c("#CFF09E", "#79BD9A", "#0B486B")
adrift.pal <- colorRamp(adrift)
adrift.pal <- adrift.pal(seq(0, 1, len = n))/n
colnames(adrift.pal) <- c("R", "G", "B")
write.csv(adrift.pal, file = "data-raw/adrift.csv",row.names = F)

#compatible
compatible = c("#3FB8AF", "#DAD8A7", "#FF3D7F")
compatible.pal <- colorRamp(compatible)
compatible.pal <- compatible.pal(seq(0, 1, len = n))/n
colnames(compatible.pal) <- c("R", "G", "B")
write.csv(compatible.pal, file = "data-raw/compatible.csv",row.names = F)

#stories
stories = c("#F8B195", "#C06C84", "#355C7D")
stories.pal <- colorRamp(stories)
stories.pal <- stories.pal(seq(0, 1, len = n))/n
colnames(stories.pal) <- c("R", "G", "B")
write.csv(stories.pal, file = "data-raw/stories.csv",row.names = F)

#dreama
dreama = c("#1B676B", "#88C425", "#EAFDE6")
dreama.pal <- colorRamp(dreama)
dreama.pal <- dreama.pal(seq(0, 1, len = n))/n
colnames(dreama.pal) <- c("R", "G", "B")
write.csv(dreama.pal, file = "data-raw/dreama.csv",row.names = F)

#influenza
influenza = c("#300030", "#601848", "#F07241")
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
