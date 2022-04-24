
dt <- read.csv ("C:\\DKIT\\-\\vb\\GitHub\\2022_DAIT_GCA_-SD-_-PC-\\AssignmentDocs\\dent_med.csv")
 summary(dt$Galvanic_Response)
 summary(dt$Perceived_Pain)

 head(dt) 
hist(dt$Galvanic_Response,dt$Perceived_Pain) 
hist(dt$Pain_diff)
plot(dt$Pain_Diff)
#--------------------------------------
hist(dt$Pain_Diff ,
     breaks = 9,
     main = "Pain Difference between Methods",
     xlab = "Perceived Pain - Galvanic Response",
     col = "red")
plot(dt$Perceived_Pain)
hist(dt$Cntrl_Female_PP) 

#--------------------------------------
# Preliminary break down of Male Perceived Pain in Control Group
hist(dt$Cntrl_Male_PP ,
     breaks = 9,
     main = "Control Group",
     xlab = "Male Perceived Pain ",
     col = "pink")
#--------------------------------------
# Preliminary break down of Male Galvanic Response in Control Group
hist(dt$Cntrl_Male_GR ,
     breaks = 9,
     main = "Control Group",
     xlab = "Male Galvanic Resoponse ",
     col = "pink")
#--------------------------------------
# Preliminary break down of Male Galvanic Response in Meditation Group
hist(dt$Med_Male_GR ,
     breaks = 9,
     main = "Mediatation Group",
     xlab = "Male Galvanic Respopnse",
     col = "green")

#--------------------------------------
# Preliminary break down of Male Galvanic Response in Meditation Group
hist(dt$Med_Male_PP ,
     breaks = 9,
     main = "Mediatation Group",
     xlab = "Male Perceived Pain",
     col = "green")

#--------------------------------------
# Preliminary break down of Female Perceived Pain in Control Group
hist(dt$Cntrl_Female_PP ,
     breaks = 9,
     main = "Control Group",
     xlab = "Female Perceived Pain ",
     col = "pink")
#--------------------------------------
# Preliminary break down of Female Perceived Pain in Control Group
hist(dt$Cntrl_Female_GR ,
     breaks = 9,
     main = "Control Group",
     xlab = "Female Galvanic Respopnse ",
     col = "pink")
#--------------------------------------
# Preliminary break down of Female Galvanic Response in Meditation Group
hist(dt$Med_Female_GR ,
     breaks = 9,
     main = "Mediatation Group",
     xlab = "Female Galvanic Respopnse",
     col = "green")
#--------------------------------------
# Preliminary break down of Female Perceived Pain in Control Group
hist(dt$Med_Female_PP ,
     breaks = 9,
     main = "Mediatation Group",
     xlab = "Female Perceived Pain",
     col = "green")



#----------------------------
x<- (dt$Med_Female_PP) 
y<-(dt$Med_Male_PP)
sum(x,y)
#----------------------------
x<- (dt$Med_Female_GR) 
y<-(dt$Med_Male_GR)
sum(x,y)
#----------------------------
x<- (dt$Cntrl_Female_GR) 
y<-(dt$Cntrl_Male_GR)
sum(x,y)

#----------------------------
x<- (dt$Cntrl_Female_PP) 
y<-(dt$Cntrl_Male_PP)
sum(x,y)


x<-((dt$Cntrl_Female_PP)+(dt$Cntrl_Male_PP))
mean(x)

x<-(dt$Galvanic_Response)
mean(x)
var(dt$Pain_Diff)
var(dt$Galvanic_Response)
median(dt$Galvanic_Response)
boxplot (dt$Cntrl_Male_GR ~dt$Cntrl_Female_GR)
boxplot(dt$Galvanic_Response~dt$Perceived_Pain)

