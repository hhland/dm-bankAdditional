input_dir=input/test
model_dir=output/model

mahout runlogistic --scores --auc --confusion --input $input_dir/input_bank_data.csv --model $model_dir/logistic.model
