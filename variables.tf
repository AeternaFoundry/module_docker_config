variable "configs" {
  description = <<EOT
Map of configs, attributes below
Required:
    - name
Optional:
    - data
    - data_raw
    - labels (block):
        - label (required)
        - value (required)
EOT

  type = map(object({
    name     = string
    data     = optional(string)
    data_raw = optional(string)
    labels = optional(list(object({
      label = string
      value = string
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

