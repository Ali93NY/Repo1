# Question 1
# a) 
fib1 <- c(1,1,2,3,5,8,13,21,34,55)
# b)
fib2 <- c(89,144,233,377,610,987,1597,2584,4181,6765)
# c)
fib3 <- c(fib1,fib2)
fib3
# d)
fib3 [13:14]
# e)
fib3 *3
# All the numbers on fib3 are multiplied by 3; this behavior is called vectorization 
# f)
vec1 <- c(1,2)
fib3 * vec1 
# Each pair of fib3 is multiplied by 1 & 2; this behavior is called recycling 

# Question 2
faithful 
# a)
wait <- faithful$waiting
wait 
# b)
wait[which(wait == max(wait) | wait == min(wait))]
# c)
length(which(wait > 60)) 
# d)
length(which(wait > 60)) / length (wait) 
# 189/272
# e)
length(which(wait >= 70 & wait <= 80)) / length (wait)
# 85/272

# Question 3
txt <- c("The", "licenses", "for", "most", "software", "are",
         "designed", "to", "take", "away", "your", "freedom",
         "to", "share", "and", "change", "it.",
         "", "By", "contrast,", "the", "GNU", "General", "Public", "License",
         "is", "intended", "to", "guarantee", "your", "freedom", "to",
         "share", "and", "change", "free", "software", "--",
         "to", "make", "sure", "the", "software", "is",
         "free", "for", "all", "its", "users")
# a)
length(txt) # 49
# b)
?nchar
nchar(txt)
# c)
txt[which(nchar(txt) == max(nchar(txt)))]
# d)
grep(pattern = "free",txt, ignore.case = TRUE, value = FALSE)
# e)
grep(pattern = "free",txt, ignore.case = TRUE, value = TRUE)
# f)
gsub(pattern = "to", replacement = "TO", txt )