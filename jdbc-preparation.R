# Preparation for a JDBC-Connection
#

# Set JAVA_HOME, set max. memory, and load rJava library
Sys.setenv(JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home')
options(java.parameters="-Xmx2g")
library(rJava)

# Install or update the RJDBC package
install.packages("RJDBC",dep=TRUE)
