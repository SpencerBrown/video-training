A small Terraform configuration to create TLS certificates for test purposes with MongoDB (although others may find it useful).

**PLEASE NOTE:  No attention has been paid to securing the private keys created by this procedure. Please use for test purposes only.** 

Uses [tlscerts](https://github.com/SpencerBrown/tlscerts) for the Terraform modules it needs.

1. [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli). It's just a single executable binary.
2. Change to this directory and `terraform init`.
3. Modify `certs.tf` as desired.
4. Run `terraform apply`. 
5. Check the created directory `tls-certs`. It should have a root CA key and cert, a server key and cert, and a file with the server key and cert combined together.