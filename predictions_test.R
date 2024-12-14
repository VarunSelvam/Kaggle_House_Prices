#

train_set_02 <- train_set %>% 
  select(-y)

test_set_02 <- test_set %>% 
  select(-y)

train_set_02_Target <- train_set %>% 
  select(y) %>% 
  pull()

test_set_02_Target <- test_set %>% 
  select(y) %>% 
  pull()


naive_M1_train <- naiveBayes(x=train_set_02, y = train_set_02_Target)
predictions_train <- predict(naive_M1_train,train_set_02)

predictions_test <- predict(naive_M1_train, test_set_02)

mmetric(train_set_02_Target, predictions_train, metric=c("ACC", "PRECISION", "F1", "TPR"))
mmetric(test_set_02_Target, predictions_test, metric=c("ACC", "PRECISION", "F1", "TPR"))

