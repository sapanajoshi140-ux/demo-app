# dev sizing + domain. Point these at YOUR hosted zone.
region            = "ap-south-1"
environment       = "dev"
azs               = ["ap-south-1a", "ap-south-1b"]
app_instance_type = "t3.small"
db_instance_type  = "t3.small"
key_name          = "CHANGEME-keypair" # an existing EC2 key pair for SSH

# The zone must already exist in Route53; app_domain is a record inside it.
hosted_zone_name = "demo.sapanajoshi.com.np"         # CHANGEME — your hosted zone
app_domain       = "dev.demo.sapanajoshi.com.np" # CHANGEME — served over HTTPS
