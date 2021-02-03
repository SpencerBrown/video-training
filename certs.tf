
// Create the root Certificate Authority key and cert

module "root-ca" {
  source = "github.com/SpencerBrown/tlscerts/root-ca"
  prefix = "ca"
  subject = {
    O  = "MongoDB"
    OU = "Video"
    CN = "Root CA"
  }
}

// Create the Server key and CA-signed cert

module "server-cert" {
  source = "github.com/SpencerBrown/tlscerts/server"
  prefix  = "server"
  ca_cert = module.root-ca.cert
  ca_key  = module.root-ca.key
  subject = {
    O  = "MongoDB"
    OU = "Video"
    CN = "Server"
  }
  dns_names = [
    "linux-test.ts-mongo.com",
  ]
}