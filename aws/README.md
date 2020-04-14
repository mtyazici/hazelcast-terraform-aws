# Hazelcast AWS Discovery Plugin Quick Start

**Note**: These examples deploy resources into your AWS account.

1. Install [Terraform](https://www.terraform.io/).
2. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
3. Configure `aws_key_name` and `local_key_path`.
4. Run `terraform init`.
5. Run `terraform apply`.
6. At the end of deployment process, truncated member logs and their public IPs are printed out:
   ```
    aws_instance.hazelcast_member[1] (remote-exec): Apr 14, 2020 7:55:19 AM com.hazelcast.core.LifecycleService
    aws_instance.hazelcast_member[1] (remote-exec): INFO: [10.186.12.194]:5701 [dev] [4.0] [10.186.12.194]:5701 is STARTED
    aws_instance.hazelcast_member[1] (remote-exec): Apr 14, 2020 7:55:24 AM com.hazelcast.internal.cluster.ClusterService
    aws_instance.hazelcast_member[1] (remote-exec): INFO: [10.186.12.194]:5701 [dev] [4.0]

    aws_instance.hazelcast_member[1] (remote-exec): Members {size:2, ver:2} [
    aws_instance.hazelcast_member[1] (remote-exec): 	Member [10.186.12.194]:5701 - e6ece554-f5d0-4a48-b0ee-02d341e7c918 this
    aws_instance.hazelcast_member[1] (remote-exec): 	Member [10.230.162.164]:5701 - 482afe0c-3caf-455b-826e-c967fe6eca80
    aws_instance.hazelcast_member[1] (remote-exec): ]

    aws_instance.hazelcast_member[1]: Creation complete after 6m26s [id=i-04714650ec632e866]

    Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

    Outputs:

    public_ip = [
        "54.182.81.18",
        "3.218.14.21",
    ]
   ```
7. To clean up and delete all resources after you're done, run `terraform destroy`.