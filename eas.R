if(require(RMySQL)){
  
  con <- dbConnect(RMySQL::MySQL(), 
                   host = "localhost",
                   user = "", 
                   password = "",
                   db="")
  
  dbListTables(con)
  dbGetQuery(con,"SET NAMES UTF8")
  stmt3<-"select * from eas"
  #stmt2<-"SELECT gh,xm FROM md"
  db <- dbGetQuery(con,stmt3)
  dbDisconnect(con)
  summary(db)
}