df=read_excel("C:/Users/user/Desktop/E_commerce.xlsx",sheet = "Inventory")
colnames(df) = as.character(unlist(df[1, ]))
df = df[-1, ] #delete old first row that eqeual nulls
View(df)
df=remove_empty(df, which = 'rows')
View(df)
df=df[-7, ]
df=df[-27, ]
df=df[-33, ]
df=df[-40, ]
df=df[-39, ]#removing rows that has nulls in inventory id
df$Inventory_Id <- gsub("!", "", df$Inventory_Id, fixed = TRUE)
View(df)
df$Product_Id <- gsub("!", "", df$Product_Id, fixed = TRUE)
duplicated(df)
sum(duplicated(df))
df$Product_Id[is.na(df$Product_Id)] <- "Unknown"
df <- df[ , -3] 
df$Quantity_Available <- gsub("??", 0, df$Quantity_Available, fixed = TRUE)
df$Quantity_Available <- gsub("-", "", df$Quantity_Available, fixed = TRUE)
df$Quantity_Available[is.na(df$Quantity_Available)] <- 0
df=df[-8, ]
df=df[-30, ]
df=df[-31, ]
df=df[-40, ]
df=df[-19, ]
df=df[-29, ]
write_xlsx(df, "C:/Users/user/Desktop/cleaned_data.xlsx")

