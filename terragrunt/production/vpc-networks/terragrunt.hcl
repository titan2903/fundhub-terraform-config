remote_state {
  backend = "gcs"
  config = {
    bucket         = "fundhub-tfstate-bucket-prod"
    location       = "asia-southeast2"
    prefix         = "${path_relative_to_include()}/terraform.tfstate"
    credentials    = "/etc/atlantis/credentials/gcp-fundhub.json" # di sesuaikan dengan path location credentials json key
  }
}

# default or base configuration
inputs = {
  project_id        = "fundhub-408000"
  credentials       = "/etc/atlantis/credentials/gcp-fundhub.json" # di sesuaikan dengan path location credentials json key
  region            = "asia-southeast2"
  address_type      = "EXTERNAL"
  name              = "${basename(get_terragrunt_dir())}" # static ip name
}