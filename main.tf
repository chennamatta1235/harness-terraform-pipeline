terraform {
  required_providers {
    harness = {
      source  = "harness/harness"
      version = "~> 0.20.0"
    }
  }
}

provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
  account_id = "YOUR_ACCOUNT_ID"
  api_key    = "YOUR_API_KEY"
}

resource "harness_platform_pipeline" "hello_pipeline" {
  identifier = "HelloWorldPipeline"
  name       = "HelloWorldPipeline"
  org_id     = "default"
  project_id = "your_project_id"
  yaml       = file("pipeline.yaml")
}
