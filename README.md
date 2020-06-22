# Replica-Set
### Aim of this code :
This code aims at creating a replica-set by terraform for any image provided under the constraints given by the developer/user.
#### Note:
**This code uses the resource "kubernetes_deployment" as terraform doesn't have a resource for creating a *replica-set* so I used the particular resource as the deployment also uses replica-set concept behind the scene. So, using this particular resource will be equivalent to using any replica-set creation resource. Also it uses _match_expression_ block to match enviroment variables for pods.**

### Pre-requisites for having this code work on your device :
```
1. The device must be installed with terraform CLI.
2. Your device must have "Minikube" installed and environment variables must be set in the device.
3. The device also must have "kubectl" installed to manage some pods through CLI.
4. Also the minikube VM must be created previously, before executing the code. To create it you just have to run one command on your command prompt, i.e. , "minikube start --vm-driver=your_virtualization_tool(appropriate for minikube as described on minikube install page site)".
5. Also this vm you created must be running while executing the code, so you can start or stop this vm by commands "minikube start" and
"minikube stop" respectively.
```

### Steps to follow to get this code work :
```
1. First go to the directory which contains the terraform code file through CLI mode.
2. Then run the command "terraform init" in the same directory. This will download and attach all the required plugins for the terraform code to work.
3. After the plugins downloaded, run the command "terraform apply" to execute the code and create a replica-set.
4. In above step, you have to approve manually by typing "yes" but if you want this step also to be automatic then you can use "terraform apply --auto-approve" in place of "terraform apply".
5. Also if you have to delete that particular environment then use command "terraform destroy" to delete whole structure created. 
6. One thing shuld be kept in mind that the whole work must be done in the same directory where the code file is located
```
![image](https://user-images.githubusercontent.com/61407784/85315945-8d50b100-b4d9-11ea-9713-c619b2d719d6.png)
This is how you should initialize your plugins download.

![image](https://user-images.githubusercontent.com/61407784/85316211-03edae80-b4da-11ea-8c95-10173883214e.png)
This image shows structure created using terraform.

## Contact me :
**E-mail :** labhanshusahariya@gmail.com

**LinkedIn :** www.linkedin.com/in/himanshu-sahariya-926513198
