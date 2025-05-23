## Copyright © 2021, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

output "adb_ocid" {
  value = module.oci-adb.adb_database.adb_database_id
}

output "adb_password" {
  value = var.adb_password
}