# devopsdays2025

This code replace the Lab 1/Task 1 from the [Deploy APEX Apps In The Time It Takes To Make Your Morning Coffee](https://livelabs.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3793&p210_wec=&session=3985234775064)

After following the requirements (OCI Account), you have to enter to the Web Console.

Click on the Cloud Shell, top rigth corner.

clone this repo using 
```
git clone https://github.com/fmorenod81/devopsdays2025.git'
```
Go to the folder: 
```
cd /devopsdays2025/tf
```

Initialize Terraform
```
terraform init
```
View what Terraform plans do before actually doing it:
```
terraform plan
```
Use Terraform to Provision resources:
```
terraform apply
```

Finally, instead of using the file mentioned on the Lab 2, Tasks use this file [workshop_changelogs_v2.zip](./workshop_changelogs_v2.zip)