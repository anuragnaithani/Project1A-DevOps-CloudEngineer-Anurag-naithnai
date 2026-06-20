package kubernetes.admission

deny contains msg if {
  input.request.kind.kind == "Pod"
  container := input.request.object.spec.containers[_]
  not container.resources.limits.cpu
  msg := sprintf("CPU limit missing for container: %s", [container.name])
}

deny contains msg if {
  input.request.kind.kind == "Pod"
  container := input.request.object.spec.containers[_]
  not container.resources.limits.memory
  msg := sprintf("Memory limit missing for container: %s", [container.name])
}
