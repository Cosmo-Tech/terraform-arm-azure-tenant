terraform -chdir=$PWD/$1 output > $PWD/out_core_infra.txt
sed -i 's/ = /=/' $PWD/out_core_infra.txt
sed -i 's/out_/export TF_VAR_/' $PWD/out_core_infra.txt