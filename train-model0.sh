input_dir=input/train
output_dir=output/model

mkdir -p $output_dir $input_dir

x_names="age job marital education default housing loan contact month day_of_week duration campaign pdays previous poutcome emp.var.rate cons.price.idx cons.conf.idx euribor3m nr.employed"
x_types="n w w w w w w w w w n n n n w n n n n n"
mahout trainlogistic --input $input_dir/input_bank_data.csv --output $output_dir/logistic.model --target y --predictors $x_names --types $x_types --features 20 --passes 100 --rate 50 --categories 2
