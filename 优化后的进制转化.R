##优化后的进制转化
f = function(n, k = 2) {
    if (k > 9) stop("")
    if (n == 0) return("0")
    if (n < 0) return(paste0("-", f(-n, k)))
    do.call(paste0, as.list(floor(n / k^((ceiling(log(n, k)):1-1))) %% k))
}

