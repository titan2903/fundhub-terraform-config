# Google cloud storage configuration
remote_state {
  backend = "gcs"
  config = {
    bucket         = "fundhub-tfstate-bucket-prod"
    location       = "asia-southeast2"
    prefix         = "${path_relative_to_include()}/terraform.tfstate"
    credentials    = "/etc/atlantis/credentials/gcp-fundhub.json" # di sesuaikan dengan path location credentials json key di atlantis server
  }
}

# default or base configuration
inputs = {
  project_id        = "fundhub-408000"
  region            = "asia-southeast2"
  zone              = "asia-southeast2-a"
  credentials       = "/etc/atlantis/credentials/gcp-fundhub.json" # di sesuaikan dengan path location credentials json key
  name              = "${basename(get_terragrunt_dir())}" # instance name
}