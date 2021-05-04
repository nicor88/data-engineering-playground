terraform {
  required_version = ">= 0.13"

  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.15.0"
    }
  }
}

variable "snowflake_user" {}
variable "snowflake_account" {}
variable "snowflake_region" {}
variable "snowflake_password" {}

provider "snowflake" {
  // required
  username = var.snowflake_user
  account  = var.snowflake_account
  region   = var.snowflake_region

  // optional, at exactly one must be set
  password = var.snowflake_password

  // optional
  role = "SYSADMIN"
}
