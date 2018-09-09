
pred.two <- function(w1, n = 10) {
  head(two[sapply == w1][order(-P_KN)], n)
}

pred.thr <- function(w1, w2, n = 10) {
  head(thr[sapply == w1 & V3 == w2][order(-P_KN)], n)
}

pred.fou <- function(w1, w2, w3, n = 10) {
  head(fou[sapply == w1 & V4 == w2 & V3 == w3][order(-P_KN)], n)
}

pred.tth <- function(w1, w2, n = 10) {
  p.2 <- pred.two(w2)
  p.3 <- pred.thr(w1, w2)
  
  s.2 <- p.2[, c("V2", "P_KN")]
  s.3 <- p.3[, c("V2", "P_KN")]
  
  head(rbind(s.2, s.3)[order(-P_KN)], n)
}

pred.ttf <- function(w1, w2, w3, n = 10) {
  p.2 <- pred.two(w3)
  p.3 <- pred.thr(w2, w3)
  p.4 <- pred.fou(w1, w2, w3)
  
  s.2 <- p.2[, c("V2", "P_KN")]
  s.3 <- p.3[, c("V2", "P_KN")]
  s.4 <- p.4[, c("V2", "P_KN")]
  
  head(rbind(s.2, s.3, s.4)[order(-P_KN)], n)
}