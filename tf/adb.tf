## Copyright © 2021, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "oci-adb" {
  source                    = "github.com/oracle-quickstart/oci-adb"
  adb_database_db_version   = "23ai"
  adb_database_db_name      = "apexlbworkshop"
  adb_database_display_name = "APEX_Liquibase_Workshop"
  adb_password              = var.adb_password
  adb_database_db_workload  = "OLTP" # OLTP - indicates an Autonomous Transaction Processing database
  adb_free_tier             = true
  compartment_ocid          = var.compartment_ocid
  use_existing_vcn          = false # no network to inject
  adb_private_endpoint      = false # no private endpoint (AJD exposed to public Internet)
  whitelisted_ips           = [""]
}

