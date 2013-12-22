## Verbatim from R> help(anscobe) (http://www.inside-r.org/r-doc/datasets/anscombe)

require(stats); require(graphics)
summary(anscombe)
 
##-- now some "magic" to do the 4 regressions in a loop:
ff <- y ~ x
mods <- setNames(as.list(1:4), paste0("lm", 1:4))
for(i in 1:4) {
  ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
  ## or   ff[[2]] <- as.name(paste0("y", i))
  ##      ff[[3]] <- as.name(paste0("x", i))
  mods[[i]] <- lmi <- lm(ff, data = anscombe)
  print(anova(lmi))
}
 
## See how close they are (numerically!)
sapply(mods, coef)
lapply(mods, function(fm) coef(summary(fm)))
 
## Now, do what you should have done in the first place: PLOTS
op <- par(mfrow = c(2, 2), mar = 0.1+c(4,4,1,1), oma =  c(0, 0, 2, 0))
for(i in 1:4) {
  ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
  plot(ff, data = anscombe, col = "red", pch = 21, bg = "orange", cex = 1.2,
       xlim = c(3, 19), ylim = c(3, 13))
  abline(mods[[i]], col = "blue")
}
mtext("Anscombe's 4 Regression data sets", outer = TRUE, cex = 1.5)
par(op)


## Another example, verbatim from: http://blog.ouseful.info/2011/08/30/the-visual-difference-%E2%80%93-r-and-anscombe%E2%80%99s-quartet/

mydata=with(anscombe,data.frame(xVal=c(x1,x2,x3,x4), yVal=c(y1,y2,y3,y4), group=gl(4,nrow(anscombe))))
aggregate(.~group,data=mydata,mean)
aggregate(.~group,data=mydata,sd)
library(ggplot2)
ggplot(mydata,aes(x=xVal, y=yVal)) + geom_point() + facet_wrap(~group)
### Note the reference to https://public.opencpu.org/
