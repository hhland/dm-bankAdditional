input_dir=input/train
model_dir=output/model

mahout validateAdaptiveLogistic --input $input_dir/input_bank_data.csv --model $model_dir/adaptiveLogistic.model --auc --confusion
