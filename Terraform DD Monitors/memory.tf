resource "datadog_monitor" "low_memory" {
  name = "Low Memory"
  type = "metric alert"

  query = "avg(last_5m):avg:system.mem.pct_usable{env:${var.env}} < 0.2"

  message = <<EOM
Memory is critically low on host {{host.name}}.
Check running processes and cleanup memory usage.
EOM

  tags = ["env:${var.env}", "team:devops"]

}