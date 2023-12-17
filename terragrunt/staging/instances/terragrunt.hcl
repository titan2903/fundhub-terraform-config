# Google cloud storage configuration
remote_state {
  backend = "gcs"
  config = {
    bucket         = "fundhub-tfstate-bucket-stag"
    location       = "asia-southeast2"
    prefix         = "${path_relative_to_include()}/terraform.tfstate"
    credentials    = "/etc/atlantis/credentials/gcp-fundhub-stag.json" # di sesuaikan dengan path location credentials json key di atlantis server
  }
}

# default or base configuration
inputs = {
  project_id    = "fundhub-staging"
  credentials   = "/etc/atlantis/credentials/gcp-fundhub-stag.json"
  region        = "asia-southeast2"
  name          = "${basename(get_terragrunt_dir())}"
  zone          = "asia-southeast2-a"
  network       = "default"
  sub_network   = "default"
}
