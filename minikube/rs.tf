provider "kubernetes" {
    config_context_cluster = "minikube"
}
resource "kubernetes_deployment" "rs1" {
  metadata {
    name = "mypod1"
  }

  spec {
    replicas = 3
    selector {
     /* match_labels = {
        test = "MyExampleApp"
      }*/
        match_expressions{ 
           key = "dc"
           operator = "In"
           values = ["In"]
         }      
    }

    template {
      metadata {
        name = "mypod1"
        labels = {
          dc = "In"
          env = "dev"
        }
      }

      spec {
        container {
          image = "vimal13/apache-webserver-php"
          name  = "rs1"
          }
        }
      }
    }
  }
