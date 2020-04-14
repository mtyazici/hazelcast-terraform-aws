# existing key pair name to be assigned to instance
aws_key_name = "key-pair-name"
# local path of pem file for SSH connection - local_key_path/aws_key_name.pem
local_key_path = "/path/to/local/key"

# Optional
member_count = "2"

aws_instance_type      = "m1.small"
aws_region             = "us-east-1"
aws_tag_key            = "Category"
aws_tag_value          = "hazelcast-aws-discovery"
aws_connection_retries = "3"

hazelcast_version     = "4.0"
hazelcast_aws_version = "3.1"
