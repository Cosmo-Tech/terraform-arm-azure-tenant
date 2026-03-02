<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.9 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 3.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.19.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.4.5 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 2.1.3 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.35.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.19.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.35.1 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure-tenant-prerequisites"></a> [azure-tenant-prerequisites](#module\_azure-tenant-prerequisites) | ./azure-tenant-prerequisites | n/a |
| <a name="module_create-container-registry"></a> [create-container-registry](#module\_create-container-registry) | ./create-container-registry | n/a |
| <a name="module_create-eventhub"></a> [create-eventhub](#module\_create-eventhub) | ./create-eventhub | n/a |
| <a name="module_create-kusto"></a> [create-kusto](#module\_create-kusto) | ./create-kusto | n/a |
| <a name="module_create-network-resources"></a> [create-network-resources](#module\_create-network-resources) | ./create-network-resources | n/a |
| <a name="module_create-storage"></a> [create-storage](#module\_create-storage) | ./create-storage | n/a |
| <a name="module_create-vault-entries"></a> [create-vault-entries](#module\_create-vault-entries) | ./create-vault-entries | n/a |
| <a name="module_deploy-persistence-minio"></a> [deploy-persistence-minio](#module\_deploy-persistence-minio) | ./persistence-minio | n/a |
| <a name="module_deploy-persistence-postgres"></a> [deploy-persistence-postgres](#module\_deploy-persistence-postgres) | ./persistence-postgres | n/a |
| <a name="module_deploy-persistence-redis"></a> [deploy-persistence-redis](#module\_deploy-persistence-redis) | ./persistence-redis | n/a |
| <a name="module_deploy-persistence-seaweedfs"></a> [deploy-persistence-seaweedfs](#module\_deploy-persistence-seaweedfs) | ./persistence-seaweedfs | n/a |
| <a name="module_services-secrets"></a> [services-secrets](#module\_services-secrets) | ./create-services-secrets | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.tenant_rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.rg_network_owner](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.rg_owner](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/resources/role_assignment) | resource |
| [kubernetes_namespace.main_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/2.35.1/docs/resources/namespace) | resource |
| [random_string.random_storage_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_kubernetes_cluster.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/data-sources/kubernetes_cluster) | data source |
| [azurerm_resource_group.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/data-sources/resource_group) | data source |
| [azurerm_resource_group.tenant_rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/data-sources/resource_group) | data source |
| [azurerm_virtual_network.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.19.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_admin_enabled"></a> [acr\_admin\_enabled](#input\_acr\_admin\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_acr_data_endpoint_enabled"></a> [acr\_data\_endpoint\_enabled](#input\_acr\_data\_endpoint\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_acr_deploy"></a> [acr\_deploy](#input\_acr\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_acr_public_network_access_enabled"></a> [acr\_public\_network\_access\_enabled](#input\_acr\_public\_network\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_acr_quarantine_policy_enabled"></a> [acr\_quarantine\_policy\_enabled](#input\_acr\_quarantine\_policy\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_acr_retention_policy"></a> [acr\_retention\_policy](#input\_acr\_retention\_policy) | n/a | `number` | n/a | yes |
| <a name="input_acr_trust_policy"></a> [acr\_trust\_policy](#input\_acr\_trust\_policy) | n/a | `bool` | n/a | yes |
| <a name="input_acr_zone_redundancy_enabled"></a> [acr\_zone\_redundancy\_enabled](#input\_acr\_zone\_redundancy\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_adt_private_dns_zonename"></a> [adt\_private\_dns\_zonename](#input\_adt\_private\_dns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_allowed_namespace"></a> [allowed\_namespace](#input\_allowed\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_api_chart_package_version"></a> [api\_chart\_package\_version](#input\_api\_chart\_package\_version) | The version of the Cosmo Tech API chart to deploy | `string` | n/a | yes |
| <a name="input_api_dns_name"></a> [api\_dns\_name](#input\_api\_dns\_name) | n/a | `string` | n/a | yes |
| <a name="input_api_s3_username"></a> [api\_s3\_username](#input\_api\_s3\_username) | n/a | `string` | n/a | yes |
| <a name="input_api_servlet_context_path"></a> [api\_servlet\_context\_path](#input\_api\_servlet\_context\_path) | ex: /cosmotech-api | `string` | n/a | yes |
| <a name="input_api_version"></a> [api\_version](#input\_api\_version) | n/a | `string` | n/a | yes |
| <a name="input_api_version_path"></a> [api\_version\_path](#input\_api\_version\_path) | The API version path | `string` | n/a | yes |
| <a name="input_argo_database"></a> [argo\_database](#input\_argo\_database) | n/a | `string` | n/a | yes |
| <a name="input_argo_workflows_s3_username"></a> [argo\_workflows\_s3\_username](#input\_argo\_workflows\_s3\_username) | n/a | `string` | n/a | yes |
| <a name="input_audience"></a> [audience](#input\_audience) | n/a | `string` | n/a | yes |
| <a name="input_azure_prerequisites_deploy"></a> [azure\_prerequisites\_deploy](#input\_azure\_prerequisites\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_babylon_sp_client_id"></a> [babylon\_sp\_client\_id](#input\_babylon\_sp\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_babylon_sp_client_secret"></a> [babylon\_sp\_client\_secret](#input\_babylon\_sp\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_babylon_sp_object_id"></a> [babylon\_sp\_object\_id](#input\_babylon\_sp\_object\_id) | n/a | `string` | n/a | yes |
| <a name="input_blob_private_dns_zonename"></a> [blob\_private\_dns\_zonename](#input\_blob\_private\_dns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The client id | `any` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The client secret | `any` | n/a | yes |
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | n/a | `string` | n/a | yes |
| <a name="input_cluster_issuer_name"></a> [cluster\_issuer\_name](#input\_cluster\_issuer\_name) | n/a | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_container_tag"></a> [container\_tag](#input\_container\_tag) | n/a | `string` | n/a | yes |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | n/a | `string` | n/a | yes |
| <a name="input_create_babylon"></a> [create\_babylon](#input\_create\_babylon) | n/a | `bool` | n/a | yes |
| <a name="input_create_eventhub"></a> [create\_eventhub](#input\_create\_eventhub) | Whether to create Azure Event Hub resources | `bool` | n/a | yes |
| <a name="input_create_keycloak"></a> [create\_keycloak](#input\_create\_keycloak) | n/a | `bool` | n/a | yes |
| <a name="input_create_platform"></a> [create\_platform](#input\_create\_platform) | n/a | `string` | n/a | yes |
| <a name="input_create_rabbitmq"></a> [create\_rabbitmq](#input\_create\_rabbitmq) | n/a | `bool` | n/a | yes |
| <a name="input_create_restish"></a> [create\_restish](#input\_create\_restish) | n/a | `bool` | n/a | yes |
| <a name="input_create_secrets"></a> [create\_secrets](#input\_create\_secrets) | n/a | `bool` | n/a | yes |
| <a name="input_create_webapp"></a> [create\_webapp](#input\_create\_webapp) | n/a | `bool` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | n/a | `string` | n/a | yes |
| <a name="input_customertag"></a> [customertag](#input\_customertag) | n/a | `string` | n/a | yes |
| <a name="input_deployment_type"></a> [deployment\_type](#input\_deployment\_type) | Represents the kind of deployment. Currently two modes: ARM or Terraform | `string` | n/a | yes |
| <a name="input_dns_zone_rg"></a> [dns\_zone\_rg](#input\_dns\_zone\_rg) | n/a | `string` | n/a | yes |
| <a name="input_engine_secret"></a> [engine\_secret](#input\_engine\_secret) | n/a | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `string` | n/a | yes |
| <a name="input_eventhub_capacity"></a> [eventhub\_capacity](#input\_eventhub\_capacity) | n/a | `number` | n/a | yes |
| <a name="input_eventhub_private_dns_zonename"></a> [eventhub\_private\_dns\_zonename](#input\_eventhub\_private\_dns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_eventhub_public_network_access_enabled"></a> [eventhub\_public\_network\_access\_enabled](#input\_eventhub\_public\_network\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_first_tenant_in_cluster"></a> [first\_tenant\_in\_cluster](#input\_first\_tenant\_in\_cluster) | n/a | `bool` | n/a | yes |
| <a name="input_identifier_uri"></a> [identifier\_uri](#input\_identifier\_uri) | The platform identifier uri | `any` | n/a | yes |
| <a name="input_image_path"></a> [image\_path](#input\_image\_path) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_cluster_admin_activate"></a> [kubernetes\_cluster\_admin\_activate](#input\_kubernetes\_cluster\_admin\_activate) | n/a | `bool` | n/a | yes |
| <a name="input_kubernetes_config_context"></a> [kubernetes\_config\_context](#input\_kubernetes\_config\_context) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_config_path"></a> [kubernetes\_config\_path](#input\_kubernetes\_config\_path) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_mc_resource_group_name"></a> [kubernetes\_mc\_resource\_group\_name](#input\_kubernetes\_mc\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_resource_group"></a> [kubernetes\_resource\_group](#input\_kubernetes\_resource\_group) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_tenant_namespace"></a> [kubernetes\_tenant\_namespace](#input\_kubernetes\_tenant\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_kusto_auto_stop"></a> [kusto\_auto\_stop](#input\_kusto\_auto\_stop) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_deploy"></a> [kusto\_deploy](#input\_kusto\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_disk_encryption_enabled"></a> [kusto\_disk\_encryption\_enabled](#input\_kusto\_disk\_encryption\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_double_encryption_enabled"></a> [kusto\_double\_encryption\_enabled](#input\_kusto\_double\_encryption\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_engine"></a> [kusto\_engine](#input\_kusto\_engine) | n/a | `string` | n/a | yes |
| <a name="input_kusto_instance_type"></a> [kusto\_instance\_type](#input\_kusto\_instance\_type) | n/a | `string` | n/a | yes |
| <a name="input_kusto_privatedns_zonename"></a> [kusto\_privatedns\_zonename](#input\_kusto\_privatedns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_kusto_public_network_access_enabled"></a> [kusto\_public\_network\_access\_enabled](#input\_kusto\_public\_network\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_purge_enabled"></a> [kusto\_purge\_enabled](#input\_kusto\_purge\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_streaming_ingestion_enabled"></a> [kusto\_streaming\_ingestion\_enabled](#input\_kusto\_streaming\_ingestion\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_kusto_trusted_external_tenants"></a> [kusto\_trusted\_external\_tenants](#input\_kusto\_trusted\_external\_tenants) | n/a | `list(string)` | n/a | yes |
| <a name="input_kustonr_instances"></a> [kustonr\_instances](#input\_kustonr\_instances) | n/a | `number` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_monitoring_enabled"></a> [monitoring\_enabled](#input\_monitoring\_enabled) | n/a | `string` | n/a | yes |
| <a name="input_monitoring_namespace"></a> [monitoring\_namespace](#input\_monitoring\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_network_client_secret"></a> [network\_client\_secret](#input\_network\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_network_deploy"></a> [network\_deploy](#input\_network\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_network_dns_record"></a> [network\_dns\_record](#input\_network\_dns\_record) | n/a | `string` | n/a | yes |
| <a name="input_network_dns_record_create"></a> [network\_dns\_record\_create](#input\_network\_dns\_record\_create) | n/a | `bool` | n/a | yes |
| <a name="input_network_dns_zone_name"></a> [network\_dns\_zone\_name](#input\_network\_dns\_zone\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_resource_group"></a> [network\_resource\_group](#input\_network\_resource\_group) | n/a | `string` | n/a | yes |
| <a name="input_network_sp_client_id"></a> [network\_sp\_client\_id](#input\_network\_sp\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_network_sp_object_id"></a> [network\_sp\_object\_id](#input\_network\_sp\_object\_id) | n/a | `string` | n/a | yes |
| <a name="input_network_subnet_name"></a> [network\_subnet\_name](#input\_network\_subnet\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_tenant_address_prefix"></a> [network\_tenant\_address\_prefix](#input\_network\_tenant\_address\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_network_tenant_subnet_address_prefix"></a> [network\_tenant\_subnet\_address\_prefix](#input\_network\_tenant\_subnet\_address\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | n/a | `string` | n/a | yes |
| <a name="input_owner_list"></a> [owner\_list](#input\_owner\_list) | n/a | `list(string)` | n/a | yes |
| <a name="input_platform_id"></a> [platform\_id](#input\_platform\_id) | n/a | `string` | n/a | yes |
| <a name="input_platform_name"></a> [platform\_name](#input\_platform\_name) | n/a | `string` | n/a | yes |
| <a name="input_platform_object_id"></a> [platform\_object\_id](#input\_platform\_object\_id) | n/a | `string` | n/a | yes |
| <a name="input_platform_url"></a> [platform\_url](#input\_platform\_url) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_argo_user"></a> [postgresql\_argo\_user](#input\_postgresql\_argo\_user) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_cosmotech_api_admin_username"></a> [postgresql\_cosmotech\_api\_admin\_username](#input\_postgresql\_cosmotech\_api\_admin\_username) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_cosmotech_api_reader_username"></a> [postgresql\_cosmotech\_api\_reader\_username](#input\_postgresql\_cosmotech\_api\_reader\_username) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_cosmotech_api_writer_username"></a> [postgresql\_cosmotech\_api\_writer\_username](#input\_postgresql\_cosmotech\_api\_writer\_username) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_initdb_secret_name"></a> [postgresql\_initdb\_secret\_name](#input\_postgresql\_initdb\_secret\_name) | n/a | `string` | n/a | yes |
| <a name="input_postgresql_secret_name"></a> [postgresql\_secret\_name](#input\_postgresql\_secret\_name) | n/a | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | n/a | yes |
| <a name="input_project_stage"></a> [project\_stage](#input\_project\_stage) | n/a | `string` | n/a | yes |
| <a name="input_pv_minio_deploy"></a> [pv\_minio\_deploy](#input\_pv\_minio\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_pv_minio_disk_master_name"></a> [pv\_minio\_disk\_master\_name](#input\_pv\_minio\_disk\_master\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_minio_disk_source_existing"></a> [pv\_minio\_disk\_source\_existing](#input\_pv\_minio\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_pv_minio_provider"></a> [pv\_minio\_provider](#input\_pv\_minio\_provider) | n/a | `string` | n/a | yes |
| <a name="input_pv_minio_replicas"></a> [pv\_minio\_replicas](#input\_pv\_minio\_replicas) | n/a | `number` | n/a | yes |
| <a name="input_pv_minio_storage_account_type"></a> [pv\_minio\_storage\_account\_type](#input\_pv\_minio\_storage\_account\_type) | n/a | `string` | n/a | yes |
| <a name="input_pv_minio_storage_class_name"></a> [pv\_minio\_storage\_class\_name](#input\_pv\_minio\_storage\_class\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_minio_storage_gbi"></a> [pv\_minio\_storage\_gbi](#input\_pv\_minio\_storage\_gbi) | n/a | `number` | n/a | yes |
| <a name="input_pv_postgres_deploy"></a> [pv\_postgres\_deploy](#input\_pv\_postgres\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_pv_postgres_disk_master_name"></a> [pv\_postgres\_disk\_master\_name](#input\_pv\_postgres\_disk\_master\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_postgres_disk_source_existing"></a> [pv\_postgres\_disk\_source\_existing](#input\_pv\_postgres\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_pv_postgres_provider"></a> [pv\_postgres\_provider](#input\_pv\_postgres\_provider) | n/a | `string` | n/a | yes |
| <a name="input_pv_postgres_replicas"></a> [pv\_postgres\_replicas](#input\_pv\_postgres\_replicas) | n/a | `number` | n/a | yes |
| <a name="input_pv_postgres_storage_account_type"></a> [pv\_postgres\_storage\_account\_type](#input\_pv\_postgres\_storage\_account\_type) | n/a | `string` | n/a | yes |
| <a name="input_pv_postgres_storage_class_name"></a> [pv\_postgres\_storage\_class\_name](#input\_pv\_postgres\_storage\_class\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_postgres_storage_gbi"></a> [pv\_postgres\_storage\_gbi](#input\_pv\_postgres\_storage\_gbi) | n/a | `number` | n/a | yes |
| <a name="input_pv_redis_deploy"></a> [pv\_redis\_deploy](#input\_pv\_redis\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_pv_redis_disk_master_name"></a> [pv\_redis\_disk\_master\_name](#input\_pv\_redis\_disk\_master\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_redis_disk_replica_name"></a> [pv\_redis\_disk\_replica\_name](#input\_pv\_redis\_disk\_replica\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_redis_master_disk_source_existing"></a> [pv\_redis\_master\_disk\_source\_existing](#input\_pv\_redis\_master\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_pv_redis_provider"></a> [pv\_redis\_provider](#input\_pv\_redis\_provider) | n/a | `string` | n/a | yes |
| <a name="input_pv_redis_replica_disk_source_existing"></a> [pv\_redis\_replica\_disk\_source\_existing](#input\_pv\_redis\_replica\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_pv_redis_storage_account_type"></a> [pv\_redis\_storage\_account\_type](#input\_pv\_redis\_storage\_account\_type) | n/a | `string` | n/a | yes |
| <a name="input_pv_redis_storage_class_name"></a> [pv\_redis\_storage\_class\_name](#input\_pv\_redis\_storage\_class\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_redis_storage_gbi"></a> [pv\_redis\_storage\_gbi](#input\_pv\_redis\_storage\_gbi) | n/a | `number` | n/a | yes |
| <a name="input_pv_seaweedfs_deploy"></a> [pv\_seaweedfs\_deploy](#input\_pv\_seaweedfs\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_pv_seaweedfs_disk_master_name"></a> [pv\_seaweedfs\_disk\_master\_name](#input\_pv\_seaweedfs\_disk\_master\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_seaweedfs_disk_volume_name"></a> [pv\_seaweedfs\_disk\_volume\_name](#input\_pv\_seaweedfs\_disk\_volume\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_seaweedfs_master_disk_source_existing"></a> [pv\_seaweedfs\_master\_disk\_source\_existing](#input\_pv\_seaweedfs\_master\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_pv_seaweedfs_provider"></a> [pv\_seaweedfs\_provider](#input\_pv\_seaweedfs\_provider) | n/a | `string` | n/a | yes |
| <a name="input_pv_seaweedfs_replicas"></a> [pv\_seaweedfs\_replicas](#input\_pv\_seaweedfs\_replicas) | n/a | `number` | n/a | yes |
| <a name="input_pv_seaweedfs_storage_account_type"></a> [pv\_seaweedfs\_storage\_account\_type](#input\_pv\_seaweedfs\_storage\_account\_type) | n/a | `string` | n/a | yes |
| <a name="input_pv_seaweedfs_storage_class_name"></a> [pv\_seaweedfs\_storage\_class\_name](#input\_pv\_seaweedfs\_storage\_class\_name) | n/a | `string` | n/a | yes |
| <a name="input_pv_seaweedfs_storage_gbi"></a> [pv\_seaweedfs\_storage\_gbi](#input\_pv\_seaweedfs\_storage\_gbi) | n/a | `number` | n/a | yes |
| <a name="input_pv_seaweedfs_volume_disk_source_existing"></a> [pv\_seaweedfs\_volume\_disk\_source\_existing](#input\_pv\_seaweedfs\_volume\_disk\_source\_existing) | n/a | `bool` | n/a | yes |
| <a name="input_queue_private_dns_zonename"></a> [queue\_private\_dns\_zonename](#input\_queue\_private\_dns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_rabbitmq_listener_username"></a> [rabbitmq\_listener\_username](#input\_rabbitmq\_listener\_username) | n/a | `string` | n/a | yes |
| <a name="input_rabbitmq_sender_username"></a> [rabbitmq\_sender\_username](#input\_rabbitmq\_sender\_username) | n/a | `string` | n/a | yes |
| <a name="input_restish_sp_client_id"></a> [restish\_sp\_client\_id](#input\_restish\_sp\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_restish_sp_client_secret"></a> [restish\_sp\_client\_secret](#input\_restish\_sp\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_seaweedfs_database"></a> [seaweedfs\_database](#input\_seaweedfs\_database) | n/a | `string` | n/a | yes |
| <a name="input_seaweedfs_username"></a> [seaweedfs\_username](#input\_seaweedfs\_username) | n/a | `string` | n/a | yes |
| <a name="input_services_secrets_create"></a> [services\_secrets\_create](#input\_services\_secrets\_create) | n/a | `bool` | n/a | yes |
| <a name="input_storage_access_tier"></a> [storage\_access\_tier](#input\_storage\_access\_tier) | n/a | `string` | n/a | yes |
| <a name="input_storage_account_deploy"></a> [storage\_account\_deploy](#input\_storage\_account\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_storage_class_sku"></a> [storage\_class\_sku](#input\_storage\_class\_sku) | n/a | `string` | n/a | yes |
| <a name="input_storage_csm_ip"></a> [storage\_csm\_ip](#input\_storage\_csm\_ip) | n/a | `string` | n/a | yes |
| <a name="input_storage_default_action"></a> [storage\_default\_action](#input\_storage\_default\_action) | n/a | `string` | n/a | yes |
| <a name="input_storage_default_to_oauth_authentication"></a> [storage\_default\_to\_oauth\_authentication](#input\_storage\_default\_to\_oauth\_authentication) | n/a | `bool` | n/a | yes |
| <a name="input_storage_enable_https_traffic_only"></a> [storage\_enable\_https\_traffic\_only](#input\_storage\_enable\_https\_traffic\_only) | n/a | `bool` | n/a | yes |
| <a name="input_storage_kind"></a> [storage\_kind](#input\_storage\_kind) | n/a | `string` | n/a | yes |
| <a name="input_storage_min_tls_version"></a> [storage\_min\_tls\_version](#input\_storage\_min\_tls\_version) | n/a | `string` | n/a | yes |
| <a name="input_storage_public_network_access_enabled"></a> [storage\_public\_network\_access\_enabled](#input\_storage\_public\_network\_access\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_storage_shared_access_key_enabled"></a> [storage\_shared\_access\_key\_enabled](#input\_storage\_shared\_access\_key\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The subscription id | `any` | n/a | yes |
| <a name="input_swagger_sp_client_id"></a> [swagger\_sp\_client\_id](#input\_swagger\_sp\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_table_private_dns_zonename"></a> [table\_private\_dns\_zonename](#input\_table\_private\_dns\_zonename) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Standard tags to apply to all resources | `map(string)` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The tenant id | `any` | n/a | yes |
| <a name="input_tenant_resource_group"></a> [tenant\_resource\_group](#input\_tenant\_resource\_group) | Resource group to create which will contain created Azure resources for this tenant | `string` | n/a | yes |
| <a name="input_tenant_sp_name"></a> [tenant\_sp\_name](#input\_tenant\_sp\_name) | The name of the platform on which we deploy the tenant | `string` | n/a | yes |
| <a name="input_tenant_sp_object_id"></a> [tenant\_sp\_object\_id](#input\_tenant\_sp\_object\_id) | The object id of the platform service principal | `string` | n/a | yes |
| <a name="input_tf_access_key"></a> [tf\_access\_key](#input\_tf\_access\_key) | n/a | `string` | n/a | yes |
| <a name="input_tf_blob_name_tenant"></a> [tf\_blob\_name\_tenant](#input\_tf\_blob\_name\_tenant) | n/a | `string` | n/a | yes |
| <a name="input_tf_container_name"></a> [tf\_container\_name](#input\_tf\_container\_name) | n/a | `string` | n/a | yes |
| <a name="input_tf_resource_group_name"></a> [tf\_resource\_group\_name](#input\_tf\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_tf_storage_account_name"></a> [tf\_storage\_account\_name](#input\_tf\_storage\_account\_name) | n/a | `string` | n/a | yes |
| <a name="input_tls_certificate_custom_certificate"></a> [tls\_certificate\_custom\_certificate](#input\_tls\_certificate\_custom\_certificate) | n/a | `string` | n/a | yes |
| <a name="input_tls_certificate_custom_key"></a> [tls\_certificate\_custom\_key](#input\_tls\_certificate\_custom\_key) | n/a | `string` | n/a | yes |
| <a name="input_tls_certificate_type"></a> [tls\_certificate\_type](#input\_tls\_certificate\_type) | n/a | `string` | n/a | yes |
| <a name="input_user_app_role"></a> [user\_app\_role](#input\_user\_app\_role) | n/a | <pre>list(object({<br>    description  = string<br>    display_name = string<br>    id           = string<br>    role_value   = string<br>  }))</pre> | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | n/a | `string` | n/a | yes |
| <a name="input_vault_create_entries"></a> [vault\_create\_entries](#input\_vault\_create\_entries) | n/a | `bool` | n/a | yes |
| <a name="input_vault_namespace"></a> [vault\_namespace](#input\_vault\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_vault_secrets_operator_deploy"></a> [vault\_secrets\_operator\_deploy](#input\_vault\_secrets\_operator\_deploy) | n/a | `bool` | n/a | yes |
| <a name="input_vault_secrets_operator_namespace"></a> [vault\_secrets\_operator\_namespace](#input\_vault\_secrets\_operator\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_vault_secrets_operator_vault_address"></a> [vault\_secrets\_operator\_vault\_address](#input\_vault\_secrets\_operator\_vault\_address) | n/a | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out_acr_login_password"></a> [out\_acr\_login\_password](#output\_out\_acr\_login\_password) | n/a |
| <a name="output_out_acr_login_server"></a> [out\_acr\_login\_server](#output\_out\_acr\_login\_server) | n/a |
| <a name="output_out_acr_login_server_url"></a> [out\_acr\_login\_server\_url](#output\_out\_acr\_login\_server\_url) | n/a |
| <a name="output_out_acr_login_username"></a> [out\_acr\_login\_username](#output\_out\_acr\_login\_username) | n/a |
| <a name="output_out_adx_cluster_name"></a> [out\_adx\_cluster\_name](#output\_out\_adx\_cluster\_name) | n/a |
| <a name="output_out_adx_cluster_principal_id"></a> [out\_adx\_cluster\_principal\_id](#output\_out\_adx\_cluster\_principal\_id) | n/a |
| <a name="output_out_adx_cluster_uri"></a> [out\_adx\_cluster\_uri](#output\_out\_adx\_cluster\_uri) | n/a |
| <a name="output_out_api_cosmo_scope"></a> [out\_api\_cosmo\_scope](#output\_out\_api\_cosmo\_scope) | n/a |
| <a name="output_out_api_cosmo_url"></a> [out\_api\_cosmo\_url](#output\_out\_api\_cosmo\_url) | n/a |
| <a name="output_out_api_cosmo_version_path"></a> [out\_api\_cosmo\_version\_path](#output\_out\_api\_cosmo\_version\_path) | n/a |
| <a name="output_out_azure_resource_location"></a> [out\_azure\_resource\_location](#output\_out\_azure\_resource\_location) | n/a |
| <a name="output_out_azure_storage_account_key"></a> [out\_azure\_storage\_account\_key](#output\_out\_azure\_storage\_account\_key) | n/a |
| <a name="output_out_azure_storage_account_name"></a> [out\_azure\_storage\_account\_name](#output\_out\_azure\_storage\_account\_name) | n/a |
| <a name="output_out_babylon_sp_client_id"></a> [out\_babylon\_sp\_client\_id](#output\_out\_babylon\_sp\_client\_id) | n/a |
| <a name="output_out_babylon_sp_client_secret"></a> [out\_babylon\_sp\_client\_secret](#output\_out\_babylon\_sp\_client\_secret) | n/a |
| <a name="output_out_babylon_sp_name"></a> [out\_babylon\_sp\_name](#output\_out\_babylon\_sp\_name) | n/a |
| <a name="output_out_babylon_sp_object_id"></a> [out\_babylon\_sp\_object\_id](#output\_out\_babylon\_sp\_object\_id) | n/a |
| <a name="output_out_identifier_uri"></a> [out\_identifier\_uri](#output\_out\_identifier\_uri) | n/a |
| <a name="output_out_monitoring_namespace"></a> [out\_monitoring\_namespace](#output\_out\_monitoring\_namespace) | n/a |
| <a name="output_out_platform_sp_name"></a> [out\_platform\_sp\_name](#output\_out\_platform\_sp\_name) | n/a |
| <a name="output_out_restish_sp_client_id"></a> [out\_restish\_sp\_client\_id](#output\_out\_restish\_sp\_client\_id) | n/a |
| <a name="output_out_restish_sp_client_secret"></a> [out\_restish\_sp\_client\_secret](#output\_out\_restish\_sp\_client\_secret) | n/a |
| <a name="output_out_subscription_id"></a> [out\_subscription\_id](#output\_out\_subscription\_id) | n/a |
| <a name="output_out_swagger_sp_client_id"></a> [out\_swagger\_sp\_client\_id](#output\_out\_swagger\_sp\_client\_id) | n/a |
| <a name="output_out_swagger_sp_name"></a> [out\_swagger\_sp\_name](#output\_out\_swagger\_sp\_name) | n/a |
| <a name="output_out_tenant_resource_group"></a> [out\_tenant\_resource\_group](#output\_out\_tenant\_resource\_group) | n/a |
| <a name="output_out_tenant_sp_client_id"></a> [out\_tenant\_sp\_client\_id](#output\_out\_tenant\_sp\_client\_id) | n/a |
| <a name="output_out_tenant_sp_object_id"></a> [out\_tenant\_sp\_object\_id](#output\_out\_tenant\_sp\_object\_id) | n/a |
<!-- END_TF_DOCS -->