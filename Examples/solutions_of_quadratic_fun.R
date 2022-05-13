
# 从键盘读入数据：求二次方程a2*x^2 + a1*x + a0 = 0的根
# 输入值
cat("find the zeros of a2*x^2 + a1*x + a0 = 0\n")
a2 <- as.numeric(readline("a2 = "))
a1 <- as.numeric(readline("a1 = "))
a0 <- as.numeric(readline("a0 = "))
# 计算判别式
discrim <- a1^2 - 4*a2*a0
# 根据判别式值计算二次方程的根
if (discrim > 0) {
  roots <- (-a1 + c(1,-1) * sqrt(a1^2 - 4*a2*a0))/(2*a2)
} else {
  if (discrim == 0) {
    roots <- -a1/(2*a2)
  }else{
    roots <- c()
  }
}
# output
if (length(roots) == 0) {
  cat("no roots\n")
}else if(length(roots) == 1) {
  cat("single root at", roots, "\n")
}else{
  cat("roots at", roots[1], "and", roots[2], "\n")
}