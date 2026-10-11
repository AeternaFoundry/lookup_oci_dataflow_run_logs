output "dataflow_run_logs_lookup_id" {
  description = "Map of id values across all dataflow_run_logs_lookup, keyed the same as var.dataflow_run_logs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_dataflow_run_logs.dataflow_run_logs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataflow_run_logs_lookup_filter" {
  description = "Map of filter values across all dataflow_run_logs_lookup, keyed the same as var.dataflow_run_logs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_dataflow_run_logs.dataflow_run_logs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "dataflow_run_logs_lookup_run_id" {
  description = "Map of run_id values across all dataflow_run_logs_lookup, keyed the same as var.dataflow_run_logs_lookup except keys with no run_id are omitted"
  value       = { for k, v in data.oci_dataflow_run_logs.dataflow_run_logs_lookup : k => v.run_id if v.run_id != null && length(v.run_id) > 0 }
}
output "dataflow_run_logs_lookup_run_logs" {
  description = "Map of run_logs values across all dataflow_run_logs_lookup, keyed the same as var.dataflow_run_logs_lookup except keys with no run_logs are omitted"
  value       = { for k, v in data.oci_dataflow_run_logs.dataflow_run_logs_lookup : k => v.run_logs if v.run_logs != null && length(v.run_logs) > 0 }
}

