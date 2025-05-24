# devopsdays2025

This code replace the Lab 1/Task 1 from the [Deploy APEX Apps In The Time It Takes To Make Your Morning Coffee](https://livelabs.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3793&p210_wec=&session=3985234775064)


The presentation is [here](./Un%20café%20desplegando%20Aplicaciones%20Low-Code.pdf)

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

You have to follow instructions from LiveLabs: Do it manually on APEX, create workspace.

##  Lab 1 Task 3

Optional to review access using SQL Options.

##  Lab 2 Task 1

On the same folder of tf, you get variables (same password as optional, and Autonomous Database ID) using
```
export adb_ocid=$(terraform output adb_ocid| tr -d '"')
```
```
export adb_password=$(terraform output adb_password| tr -d '"')
```
The replacement will be done automatically on 
```
oci db autonomous-database generate-wallet --generate-type ALL --file Wallet_APEXworkshop.zip --password [Insert Password] --autonomous-database-id [Insert OCID]
```

using 

```
cd ~
```

```
oci db autonomous-database generate-wallet --generate-type ALL --file Wallet_APEXworkshop.zip --password $adb_password --autonomous-database-id $adb_ocid
```
Review that your file Wallet_APEXworkshop.zip is located on your current folder using ```ls -la```

##  Lab 2 Task 2

Instead of using the file mentioned on LiveLabs, use this file [workshop_changelogs_v2.zip](./workshop_changelogs_v2.zip) that you have download on the git repo.

unzip the file
```
cd ~
```

```
unzip -d workshop_changelogs ./devopsdays2025/workshop_changelogs_v2.zip
```

##  Lab 2 Task 3

You have to follow instructions from LiveLabs: SQL Connection.

The wallet has a password to stablish a connection, you use the same that you use on Lab 2 Task 1 (It is the same the rest).

##  Lab 2 Task 4

You have to follow instructions from LiveLabs: Deploy Your APEX Application, REST APIs, and Database Objects.

##  Lab 2 Task 5

You have to follow instructions from LiveLabs: View Your Deployments.

In addition, you can leave to have the following information:

Workspace: Liquibase_Demo

Workspace: LIQUIBASE_DEMO

Password: Usual_Password


##  Lab 2 Task 6

You have to follow instructions from LiveLabs: Update Your APEX Application.

##  Cleanup resources

On the Cloudshell, Go to the folder: 
```
cd ./devopsdays2025/tf
```

```
terraform destroy --auto-approve
```