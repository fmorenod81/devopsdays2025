# devopsdays2025

This code replace the Lab 1/Task 1 from the [Deploy APEX Apps In The Time It Takes To Make Your Morning Coffee](https://livelabs.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3793&p210_wec=&session=3985234775064)

After following the requirements (OCI Account), you have to enter to the Web Console.

Create a compartment where you have to create your Autonomous Database, you can follow this [instructions](https://docs.oracle.com/en/cloud/paas/integration-cloud/oracle-integration-oci/creating-oci-compartment.html) and find his [Compartment OCID](https://docs.oracle.com/en-us/iaas/Content/GSG/Tasks/contactingsupport_topic-Locating_Oracle_Cloud_Infrastructure_IDs.htm#Finding_the_OCID_of_a_Compartment)


##  Lab 1 Task 1

Click on the [Cloud Shell](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/devcloudshellgettingstarted.htm), top rigth corner.

clone this repo using 
```
git clone https://github.com/fmorenod81/devopsdays2025.git
```
Go to the folder: 
```
cd ./devopsdays2025/tf
```
Modify the compartment OCID parameter on ```terraform.tfvars```, you can use vi as text editor.

Initialize Terraform
```
terraform init
```
View what Terraform plans do before actually doing it:
```
terraform plan
```
Use Terraform to Provision resources automatically, without confirmation :
```
terraform apply --auto-approve
```
##  Lab 1 Task 2

You have to do it manually on APEX: create workspace.

##  Lab 1 Task 3

OPTIONAL

##  Lab 2 Task 1

On the same folder of tf, you get variables (same password as optional, and Autonomous Database ID) using
```
export adb_ocid=$(terraform output adb_ocid)
```
```
export adb_password=$(terraform output adb_password)
```


Finally, instead of using the file mentioned on the Lab 2, Tasks use this file [workshop_changelogs_v2.zip](./workshop_changelogs_v2.zip)