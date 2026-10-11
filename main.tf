data "oci_dataflow_run_logs" "dataflow_run_logs_lookup" {
  for_each = var.dataflow_run_logs_lookup

  run_id = each.value.run_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

