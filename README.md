# Replica-Set
### Aim of this code :
This code aims at creating a replica-set by terraform for any image provided under the constraints given by the developer/user.
#### Note:
**This code uses the resource "kubernetes_deployment" as terraform doesn't have a resource for creating a *replica-set* so I used the particular resource as the deployment also uses replica-set concept behind the scene. So, using this particular resource will be equivalent to using any replica-set creation resource**
