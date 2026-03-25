resource "datadog_monitor" "high_cpu" {
  name              = "High CPU Usage"
  type              = "metric alert"
  query             = "avg(last_5m):avg:system.cpu.user{env:${var.env}} > 80"
  message           = "CPU is high on {{host.name}}"
}