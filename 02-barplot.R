x<-table(mtcars$cyl, mtcars$am)
barplot(x, legend=rownames(x),
        xlab='Schaltung (0) / Automatik (1)',
        ylab='Anzahl')
title('Verteilung der Anzahl Zylinder \nin abh. vom Getriebe')	


x<-prop.table(table(mtcars$cyl, mtcars$am))
barplot(x, legend=rownames(x),
        xlab='Schaltung (0) / Automatik (1)',
        ylab='H‰ufigkeit')
title('Verteilung der Anzahl Zylinder \nin abh. vom Getriebe')	


barplot(x, 
        legend=rownames(x),
        args.legend=list(title='Anzahl Zylinder'),
        xlab='Schaltung (0) / Automatik (1)')

barplot(x, legend=rownames(x), beside=T)


# umwandlung des numerischen wertes von am in faktorwert:
#
mtcars$getriebeart <- factor(mtcars$am, labels=c('Schaltgetriebe','Automatik'))

x<-prop.table(table(mtcars$cyl, mtcars$getriebeart))
barplot(x, 
        legend=rownames(x),
        args.legend=list(title='Anzahl Zylinder'))