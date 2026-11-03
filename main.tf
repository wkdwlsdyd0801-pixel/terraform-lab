
terraform {

  cloud {

    organization = "cloud-lab-wkdwlsdyd0801"



    workspaces {

      name = "cloud-lab"

    }

  }



  required_providers {

    random = {

      source  = "hashicorp/random"

      version = "~> 3.6"

    }

  }

}



resource "random_pet" "lab" {

  length = 3

}



output "pet_name" {

  value = random_pet.lab.id

}

