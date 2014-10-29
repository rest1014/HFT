mtcars

mtcars$cyl

hist(mtcars$hp, main='Motorleistung (PS)')

opar <- par(no.readonly=TRUE)
par(mfrow=c(1,2))
hist(mtcars[mtcars$am==1,]$hp, 
     main='Motorleistung f¸r Autos\nmit Automatikgetriebe', xlab='PS',
     breaks=4, 
     xaxt='n')
axis(side=1, at=seq(0,400, 100), labels=seq(0,400,100))
hist(mtcars[mtcars$am==0,]$hp, 
     main='Motorleistung f¸r Autos\n mit Schaltgetriebe', xlab='PS',
     breaks=4, 
     xaxt='n')
axis(side=1, at=seq(0,400, 100), labels=seq(0,400,100))
par(opar)

