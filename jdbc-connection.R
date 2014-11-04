# JDBC-Connection
#

# Credentials and table
rquser <- readline("Username: ")  
rqpwd <- readline("Password: ") 
table <-"KADA1023.HFT001"

# Load RJDBC library
library(RJDBC)

# Load JDBC driver
drv <- JDBC("oracle.jdbc.OracleDriver",
            "/Users/steffen/Public/Dropbox/Privat/Study/WIM01/Privat/HFT/instantclient_11_2/ojdbc6.jar", "`")

# Logon into database
con <- dbConnect(drv, "jdbc:oracle:thin:@iwi-w-vm-dbo.hs-karlsruhe.de:1521:ORACLEDBWI", rquser, rqpwd)

# List tables
#dbListTables(con, table)
#dbListFields(con, table)

# Query on the Oracle instance name.
# dbWriteTable(con, table, test_table)
# dbGetQuery(con, "select count(*) from table")
d <- dbReadTable(con, table)
View(d)

# Close connection
dbDisconnect(con)
