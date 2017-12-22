input_dir=input
test_dir=input/test
train_dir=input/train
data_head="age,job,marital,education,default,housing,loan,contact,month,day_of_week,duration,campaign,pdays,previous,poutcome,emp.var.rate,cons.price.idx,cons.conf.idx,euribor3m,nr.employed,y"


mkdir -p $test_dir $train_dir

mahout split --input $input_dir --trainingOutput $train_dir --testOutput $test_dir -xm sequential --randomSelectionPct 30

sed -i '1s/^/age,job,marital,education,default,housing,loan,contact,month,day_of_week,duration,campaign,pdays,previous,poutcome,emp.var.rate,cons.price.idx,cons.conf.idx,euribor3m,nr.employed,y\n/' $test_dir/input_bank_data.csv

sed -i '1s/^/age,job,marital,education,default,housing,loan,contact,month,day_of_week,duration,campaign,pdays,previous,poutcome,emp.var.rate,cons.price.idx,cons.conf.idx,euribor3m,nr.employed,y\n/' $train_dir/input_bank_data.csv
