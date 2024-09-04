data<-data[,c(5,6)]
summary(data)
data <- na.omit(data)
summary(data)
sorted_portfolio <- data[order(data$point), ]
num_portfolios <- nrow(sorted_portfolio)
group_size <- ceiling(num_portfolios / 5)
portfolio_groups <- cut(1:num_portfolios, breaks = 5, labels = FALSE)
group_1 <- sorted_portfolio[portfolio_groups == 1, ]
summary(group_1)
group_5 <- sorted_portfolio[portfolio_groups == 5, ]
summary(group_5)
t_test_result <- t.test(group_1$range, group_5$range)
print(t_test_result)

