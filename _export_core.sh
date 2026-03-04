terraform -chdir=$PWD/$1 output -json | jq -r '
to_entries[]
| select(.value.sensitive != true)
| "export TF_VAR_\(.key)=\"\(.value.value // "")\""
' > $PWD/out_core_infra.txt