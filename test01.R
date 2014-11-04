# test-script auf Datenbasis Version 1.11
#

# Zuweisung der Datenquelle an die Variable 'dataset'
#
dataset <- XYZ_2013.11.14.Modify1mac
dataset
# Wie oft kommen die unterschiedlichen Ausprägungen in HFTness vor?
#
table(dataset$HFTness)


