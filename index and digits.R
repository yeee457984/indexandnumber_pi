library(Rmpfr)

num <- Const("pi")
num = as.character(format(num, digits = 120))
temp <- list()

a = sub('.','',sub('.','',num))
a <- strsplit(a, split = "")
a <- as.integer(unlist(a))

even_set <- list()
odd_set <- list()

for (i in a){
  if (i %% 2 == 0) {
    even_set = c(even_set,i) #60
  }else{
    odd_set = c(odd_set,i) #59
  }
  temp <- c(temp,abs(length(even_set) - length(odd_set)))
}
temp

x <- seq(1:119)
y <- temp
plot(x, y, main = "I don't know",
     xlab = "index", ylab = "odd-even",
     pch = 19, frame = FALSE)