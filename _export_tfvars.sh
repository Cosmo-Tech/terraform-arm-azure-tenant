terraform -chdir=$PWD/$1 output -json | jq -r '
to_entries[]
| select(.value.sensitive != true)
| .key as $k
| ($k | sub("^out_"; "")) as $k2
| "export TF_VAR_\($k2)=\"\(.value.value // "")\""
' > $PWD/out_azure_core.txt