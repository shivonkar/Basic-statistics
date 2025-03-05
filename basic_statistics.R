############### Load Library ###############################################
rm(list = ls(all.names = TRUE)) # Clear environment
folder_current <- "D:/Trainings/R"; setwd(folder_current)

############### Sample Size ###############################################
You could write a function in R to do the above calculation, but fortunately, you don't need to. The pwr library has done it for you. In this case, we will use the pwr.t.test() function.
pwr.t.test(n = , d = , sig.level = , power = , type = c("two.sample", "one.sample", "paired"))
In this case, we will leave out the "n=" parameter, and it will be calculated by R. If we fill in a sample size, and use "power = NULL", then it will calculate the power of our test.
In this equation, d is the effect size, so we will calculate that from our delta and sigma values. In R, it looks like this:
  > delta <- 20
> sigma <- 60
> d <- delta/sigma
> pwr.t.test(d=d, sig.level=.05, power = .90, type = 'two.sample')

Two-sample t test power calculation

n = 190.0991
d = 0.3333333
sig.level = 0.05
power = 0.9
alternative = two.sided

NOTE: n is number in *each* group

###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
###############  ###############################################
