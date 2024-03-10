# Exploratory Analysis
head(Bank)
dim(Bank)
counts<-table(Bank$y)
barplot(counts, col = c("blue", "red"), main ="Barplot of y", xlab = "categories", ylab = "frequency")
counts<-table(Bank$default)
barplot(counts, col = c("blue", "red"), main ="Barplot of Default", xlab = "categories", ylab = "frequency")
counts<-table(Bank$housing)
barplot(counts, col = c("blue", "red"), main ="Barplot of Housing", xlab = "categories", ylab = "frequency")
counts<-table(Bank$loan)
barplot(counts, col = c("blue", "red"), main ="Barplot of Loan", xlab = "categories", ylab = "frequency")
hist(Bank$age, main = "Histogram of age", xlab = "years", ylab = "Count")
hist(Bank$duration, main = "Histogram of Duration", xlab = "secs", ylab = "Count")
summary(Bank$age)
sd(Bank$age)
summary(Bank$duration)
sd(Bank$duration)

# Define variables as categorical. 
Bank$default<-as.factor(Bank$default)
Bank$housing<-as.factor(Bank$housing)
Bank$loan<-as.factor(Bank$loan)

#Run logistic regression
reg1<-glm(y~age + default + housing + loan + duration, data = Bank, family = binomial() )
summary(reg1)

#Rerun model without the insignificant variable in reg1 usin 0.1 as threshold to determine significance
reg2<-glm(y~age + housing + loan + duration, data = Bank, family = binomial() )
summary(reg2)

reg2$coefficients

#calculate the odds ratio
exp(reg2$coefficients)

#calculate the confidence interval
exp(confint(reg2))
