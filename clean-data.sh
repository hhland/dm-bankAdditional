mkdir input

sed -e 's/;/,/g' datasource/bank-additional-full.csv > input/input_bank_data.csv
sed -i 's/"//g' input/input_bank_data.csv
sed -i '1d' input/input_bank_data.csv
