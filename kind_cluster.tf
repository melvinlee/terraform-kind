resource "kind_cluster" "default" {
  name            = "kind-k8s-cluster"
  wait_for_ready  = true
  kubeconfig_path = pathexpand("~/.kube/config")

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
    }

    node {
      role = "worker"
    }

  }
}

output "kubeconfig" {
  value = kind_cluster.default.kubeconfig
}