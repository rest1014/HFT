# beispieldatensatz:
#
mtcars

# Wie oft kommen die verschiedenen Auspr‰gungen von cyl (Anzahl Zylinder) 
# in mtcars vor?
#
table(mtcars$cyl)


prop.table(mtcars$cyl)


# Wie oft kommen die verschiedenen Auspr‰gungen von cyl und 
# gear (Anzahl G‰nge) in mtcars vor?
#
table(mtcars$cyl, mtcars$gear)

# alternativ:
# 
xtabs(~cyl+gear, data=mtcars)


# Wie oft kommen die verschiedenen Auspr‰gungen von cyl, gear und
# am (transmission type: 0=automatic, 1=manual) in mtcars vor?
#
table(mtcars$cyl, mtcars$gear, mtcars$am)

# relative h‰ufigkeit
#
prop.table(table(mtcars$cyl, mtcars$gear, mtcars$am))


# relative h‰ufigkeit in prozent
#
prop.table(table(mtcars$cyl, mtcars$gear, mtcars$am)) * 100



table(mtcars$cyl, mtcars$gear, mtcars$am)
