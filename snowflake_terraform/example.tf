resource "snowflake_database" "playground" {
  name                        = "PLAYGROUND"
  comment                     = "An example schema created by terraform"
  data_retention_time_in_days = 0
}

resource "snowflake_schema" "example" {
  database            = snowflake_database.playground.name
  name                = "EXAMPLE"
  data_retention_days = 1
  is_transient        = false
  is_managed          = false
  comment             = "An example schema created by terraform"
}
