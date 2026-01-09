terraform {
  required_version = ">= 1.14.0"
  
  cloud {}

  required_providers {
    # Official provider for environment variables
    netlify = {
      source = "netlify/netlify"
    }
    # Community provider for site creation
    aegirnetlify = {
      source = "AegirHealth/netlify"
    }
  }
}

# Configure official provider
provider "netlify" {
  token = var.netlify_auth_token
}

# Configure AegirHealth provider
provider "aegirnetlify" {
  token = var.netlify_auth_token
}

# 1. Create the site using AegirHealth
resource "netlify_site" "my_site" {
  provider = aegirnetlify
  name     = "nextlify-deploy"
  # ... other site config ...
}

# 2. Set environment variables using the official provider
resource "netlify_environment_variable" "api_key" {
  provider = netlify
  site_id  = netlify_site.my_site.id
  team_id = var.netlify_team_id # Replace with your actual team ID

  key      = "nextauth_url"
  values = [
    {
      value   = "https://nextlify-deploy.netlify.app/",
      context = "all",
    }
  ]
}

variable "netlify_auth_token" {
  description = "Netlify API token"
  type        = string
  sensitive   = true
}

variable "netlify_team_id" {
  description = "Netlify Team ID"
  type        = string
}

variable "nextauth_url" {
  description = "NextAuth URL"
  type        = string
}