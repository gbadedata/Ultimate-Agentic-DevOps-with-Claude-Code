# ---------------------------------------------------------------------------
# Remote state backend (S3)
# ---------------------------------------------------------------------------
# The backend is commented out for the FIRST run because the state bucket does
# not exist yet. Bootstrap in three steps:
#
#   1. First run WITHOUT a backend (state stored locally):
#        terraform init
#        terraform apply
#      Create your state bucket here (or as a separate resource) and note its name.
#
#   2. Uncomment the block below and fill in your state bucket name and region.
#
#   3. Migrate the existing local state into the S3 backend:
#        terraform init -migrate-state
#
# terraform {
#   backend "s3" {
#     bucket       = "portfolio-site-tfstate"   # must already exist
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true                        # S3-native state locking (Terraform >= 1.10)
#   }
# }
