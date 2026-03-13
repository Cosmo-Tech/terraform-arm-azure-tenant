# azure
deployment_type            = "Terraform"
client_id                  = ""
client_secret              = ""
platform_object_id         = ""
identifier_uri             = ""
tenant_sp_name             = ""
tenant_sp_object_id        = ""
cloud_provider             = "azure"
azure_prerequisites_deploy = true

# project

project_cost_center   = "mtor-arm"
project_customer_name = "mtor-arm"
project_name          = "mtor-arm"
project_stage         = "Dev"

tags = {
  cost_center = "NA"
  customer    = ""
  project     = ""
  stage       = "Dev"
  vendor      = "cosmotech"
}

# monitoring
monitoring_namespace = "cosmotech-monitoring"
monitoring_enabled   = true

# kubernetes
first_tenant_in_cluster           = true

# container registry
acr_deploy                        = true
acr_admin_enabled                 = true
acr_quarantine_policy_enabled     = false
acr_data_endpoint_enabled         = false
acr_public_network_access_enabled = true
acr_zone_redundancy_enabled       = false
acr_trust_policy                  = false
acr_retention_policy              = 7

# network
network_deploy                       = true
network_client_secret                = ""
network_tenant_address_prefix        = "10.10.0.0/16"
network_tenant_subnet_address_prefix = "10.10.0.0/24"
network_subnet_name                  = "default"
network_dns_record_create            = false
blob_private_dns_zonename            = "privatelink.blob.core.windows.net"
queue_private_dns_zonename           = "privatelink.queue.core.windows.net"
table_private_dns_zonename           = "privatelink.table.core.windows.net"
eventhub_private_dns_zonename        = "privatelink.servicebus.windows.net"
adt_private_dns_zonename             = "privatelink.digitaltwins.azure.net"

# storage
storage_account_deploy                  = true
storage_class_sku                       = "Standard_LRS"
storage_kind                            = "StorageV2"
storage_min_tls_version                 = "TLS1_2"
storage_default_to_oauth_authentication = false
storage_shared_access_key_enabled       = true
storage_enable_https_traffic_only       = true
storage_access_tier                     = "Hot"
storage_public_network_access_enabled   = true
storage_default_action                  = "Deny"
storage_csm_ip                          = "185.55.98.16/29"

# eventhub
create_eventhub                        = false
eventhub_capacity                      = 2
eventhub_public_network_access_enabled = true

# kusto
kusto_deploy                        = true
kusto_auto_stop                     = false
kusto_instance_type                 = "Standard_D12_v2"
kusto_instances                      = 2
kusto_engine                        = "V2"
kusto_trusted_external_tenants      = ["*"]
kusto_disk_encryption_enabled       = false
kusto_streaming_ingestion_enabled   = true
kusto_purge_enabled                 = false
kusto_double_encryption_enabled     = false
kusto_public_network_access_enabled = true
kusto_privatedns_zonename           = "privatelink.kusto.core.windows.net"

# redis pvc
pv_redis_deploy                      = true
pv_redis_master_disk_source_existing = false
pv_redis_storage_gbi                 = 32
pv_redis_storage_account_type        = "Premium_LRS"
pv_redis_storage_class_name          = "cosmotech-retain"
pv_redis_provider                    = "azure"
pv_redis_disk_master_name            = ""
pv_redis_disk_replica_name           = ""
pv_redis_replica_disk_source_existing= false

# postgres pv
pv_postgres_deploy               = true
pv_postgres_disk_source_existing = false
pv_postgres_storage_gbi          = 32
pv_postgres_storage_account_type = "Premium_LRS"
pv_postgres_storage_class_name   = "cosmotech-retain"
pv_postgres_replicas             = 1
pv_postgres_provider             = "azure"
pv_postgres_disk_master_name     = ""

# minio pv
pv_minio_deploy               = true
pv_minio_disk_source_existing = false
pv_minio_storage_gbi          = 32
pv_minio_storage_account_type = "Premium_LRS"
pv_minio_storage_class_name   = "cosmotech-retain"
pv_minio_replicas             = 1
pv_minio_provider             = "azure"
pv_minio_disk_master_name     = ""

# services
services_secrets_create = true

postgresql_cosmotech_api_reader_username = "cosmotech_api_reader"
postgresql_cosmotech_api_writer_username = "cosmotech_api_writer"
postgresql_cosmotech_api_admin_username  = "cosmotech_api_admin"
postgresql_initdb_secret_name            = "postgres-initdb"
postgresql_argo_user                     = "argo"
postgresql_secret_name                   = "postgres-config"

# argo
argo_database              = "argo_workflows"
argo_workflows_s3_username = "argo_workflows"

# restish
create_restish           = false
restish_sp_client_id     = ""
restish_sp_client_secret = ""

# Babylon
create_babylon           = true
babylon_sp_client_id     = ""
babylon_sp_object_id     = ""
babylon_sp_client_secret = ""

# swagger
swagger_sp_client_id = ""

create_powerbi  = false
create_secrets  = false
create_platform = true

# cosmotech api
api_servlet_context_path  = ""
api_version               = "3.3.6"
api_version_path          = "v3"
audience                  = "AzureADMultipleOrgs"
platform_name             = ""
platform_url              = ""
user_app_role = [{
  description  = "Workspace Writer",
  display_name = "Workspace Writer",
  id           = "3f7ba86c-9940-43c8-a54d-0bfb706da136",
  role_value   = "Workspace.Writer"
  }, {
  description  = "Workspace Reader",
  display_name = "Workspace Reader",
  id           = "73ce2073-d918-4fe1-bc24-a4e69db07db8",
  role_value   = "Workspace.Reader"
  }, {
  description  = "Solution Writer"
  display_name = "Solution Writer"
  id           = "4f6e62a3-7f0a-4396-9620-ab465cd6577b"
  role_value   = "Solution.Writer"
  }, {
  description  = "Solution Reader"
  display_name = "Solution Reader"
  id           = "cf1a8625-38d9-417b-a5b9-a27c0014e740"
  role_value   = "Solution.Reader"
  }, {
  description  = "ScenarioRun Writer"
  display_name = "ScenarioRun Writer"
  id           = "ca8a2a19-3e09-48cc-976b-85ec9de4f68a"
  role_value   = "ScenarioRun.Writer"
  }, {
  description  = "ScenarioRun Reader"
  display_name = "ScenarioRun Reader"
  id           = "bdc8fe2a-73a8-477d-9efa-d8a37a4eb0f7"
  role_value   = "ScenarioRun.Reader"
  }, {
  description  = "Scenario Writer"
  display_name = "Scenario Writer"
  id           = "8fb9d03e-c46d-4003-a2a6-34d8b506e4e7"
  role_value   = "Scenario.Writer"
  }, {
  description  = "Scenario Reader"
  display_name = "Scenario Reader"
  id           = "e07dab65-4200-4502-8e36-79ca687320d9"
  role_value   = "Scenario.Reader"
  }, {
  description  = "Organization Writer"
  display_name = "Organization Writer"
  id           = "89d74995-095c-442f-bfda-06a77d3dbaa4"
  role_value   = "Organization.Writer"
  }, {
  description  = "Organization Reader"
  display_name = "Organization Reader"
  id           = "96213509-202a-497c-9f60-53c5f85268ec"
  role_value   = "Organization.Reader"
  }, {
  description  = "Dataset Writer"
  display_name = "Dataset Writer"
  id           = "c6e5d483-ec2c-4710-bf0c-78b0fda611dc"
  role_value   = "Dataset.Writer"
  }, {
  description  = "Dataset Reader"
  display_name = "Dataset Reader"
  id           = "454dc3f5-3012-45b3-bad6-975dae94338c"
  role_value   = "Dataset.Reader"
  }, {
  description  = "Ability to write connectors"
  display_name = "Connector Writer"
  id           = "e150953f-4835-4502-b95e-81d9ce97f591"
  role_value   = "Connector.Writer"
  }, {
  description  = "Organization Viewer"
  display_name = "Organization Viewer"
  id           = "ec5fdd3c-4df0-4c2f-bdad-0495a49f6e90"
  role_value   = "Organization.Viewer"
  }, {
  description  = "Organization User"
  display_name = "Organization User"
  id           = "bb9ffb73-997e-4320-8625-cfe45469aa3c"
  role_value   = "Organization.User"
  }, {
  description  = "Organization Modeler"
  display_name = "Organization Modeler"
  id           = "adcdb0a1-1588-4d2b-8657-364e544ac7e1"
  role_value   = "Organization.Modeler"
  }, {
  description  = "Organization Administrator"
  display_name = "Organization Admin"
  id           = "04b96a76-d77e-4a9d-967f-c55c857c478c"
  role_value   = "Organization.Admin"
  }, {
  description  = "Organization Collaborator"
  display_name = "Organization Collaborator"
  id           = "6f5ec4e3-1f2d-4502-837e-5d9754ea8acb"
  role_value   = "Organization.Collaborator"
  }, {
  description  = "Ability to develop connectors"
  display_name = "Connector Developer"
  id           = "428ab58e-ab61-4621-907c-d7908be72df7"
  role_value   = "Connector.Developer"
  }, {
  description  = "Ability to read connectors"
  display_name = "Connector Reader"
  id           = "2cd74037-3ccd-4ab7-929d-4afce87be2e4"
  role_value   = "Connector.Reader"
  }, {
  description  = "Platform Administrator"
  display_name = "Platform Admin"
  id           = "bb49d61f-8b6a-4a19-b5bd-06a29d6b8e60"
  role_value   = "Platform.Admin"
  }
]
image_path      = "./cosmotech.png"
api_s3_username = "cosmotech_api"
