


df <- data.frame(plot="location_name_1",
                 measure1=runif(100)*1000,
                 measure2=round(runif(100)*100),
                 value=rnorm(100,2,1),
                 ID=rep(LETTERS,100))

df_2 <- data.frame(plot="location_name_2",
                   measure1=runif(50)*100,
                   measure2=round(runif(50)*10),
                   value=rnorm(50),
                   ID=rep(LETTERS,50))

df <- rbind(df,df_2)

summary(df)
str(df)
mode(df)
head(df)

df[,c('plot','measure1','measure2')]
df[566:570,c('plot','measure1','measure2')]

df[,c('plot','measure1')]

df[df$value>3.0,]

df[df$value>3.2 | df$measure1>950,]
df[df$value>3.2 & df$measure1>950,]

df$new_col <- df$measure1*df$measure2


#binomal function
x1 <- rbinom(10,size=1,prob=0.5)
x2 <- factor(x1,labels=c("man","woman"))
summary(x2)
levels(x2)
as.character(x2)

#recode
library(car)
recode(x2,"'woman'='woman';'man'='guy'")

#other approach
ifelse(x2=="man","guy","woman")