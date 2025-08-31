setwd("C:\\Users\\asanka\\Desktop\\it24102705 ps")

Delivery_Times <- read.csv("Exercise - Lab 05.txt", header = TRUE)

print(names(Delivery_Times))

breaks_seq <- seq(20, 70, length.out = 10)  

hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = breaks_seq,
     right = FALSE,
     col = "lightblue",
     border = "black",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

mean_val <- mean(Delivery_Times$Delivery_Time_.minutes.)
median_val <- median(Delivery_Times$Delivery_Time_.minutes.)

cat("Mean =", mean_val, "\n")
cat("Median =", median_val, "\n")
cat("Comment: Since mean and median are very close, the distribution is approximately symmetric.\n")

hist_data <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  breaks = breaks_seq,
                  right = FALSE,
                  plot = FALSE)

cum_counts <- cumsum(hist_data$counts)

plot(breaks_seq[-1], cum_counts, type = "o", pch = 16, col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")
