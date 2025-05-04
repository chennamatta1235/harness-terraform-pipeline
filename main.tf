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
  account_id = "gaH9N1R3RxOLWwL1NHt0dQ"
  api_key    = "sat.gaH9N1R3RxOLWwL1NHt0dQ.6816ea6729910c5fa72d9ec8.Rc3Fg5ZX6UlEqCuAmDkA"
}

resource "harness_platform_pipeline" "hello_pipeline" {
  identifier = "HelloWorldPipeline"
  name       = "HelloWorldPipeline"
  org_id     = "default"
  project_id = "harness"
  yaml       = file("pipeline.yaml")
}
