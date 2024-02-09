module "cloudflare" {
  source                = "./modules/cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_email      = var.cloudflare_email
  cloudflare_api_key    = var.cloudflare_api_key
}

module "zerotier" {
  source                 = "./modules/zerotier"
  zerotier_central_token = var.zerotier_central_token
  bridged_routes = [
    "10.86.101.238/31"
  ]
}

module "ntfy" {
  source = "./modules/ntfy"
  auth   = var.ntfy
}
