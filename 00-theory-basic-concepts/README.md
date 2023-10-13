# Basic concepts
There are 4 basic concepts you need to know first:
* [Terraform binary](#terraform-binary)
* [Terraform plugins (AKA as Providers)](#terraform-providers)
* [Terraform state file](#terraform-state)
* [Terraform Lock file](#terraform-lock)


### Terraform binary
Is the CLI tool you interact with. It provides all syntax and functionality that your Terraform manifests can have.

### Terraform Providers
A Terraform provider is an extrapolation of any API to Terraform, it is responsible to convert the Terraform resources defined in your Terraform
manifests into API calls. AWS is just one provider.

### Terraform state
A file that holds all the information of the resources created and its configuration. Terraform uses this file to detect changes both in the 
provider's API and the Terraform manifests, this is what is known as "drift detection".

### Terraform Lock
A file that holds all providers version used/required for Terraform manifests and its integrity hashes.


# Terraform Workflow
The way of working with Terraform is quite simple and can be summarized in 4 steps:
* Develop manifests
* `terrafom init`
* `terraform plan`
* `terraform apply`

`terraform init` downloads all providers and modules (we will check modules later on), verifying that all versions specified work and creates the lock file if it does not exist.

`terraform plan` reads the manifests, compare them with both the state file and the actual state through Provider's APIs and shows all actions necessaries to achieve the desired state specified in the manifests.

`terraform apply` does the same as the `terraform plan` but also executing the actions listed by it.


# An analogy with Nodejs and Spotify
If you are having a hard time understanding the previous contexts, imagine these similutes with Nodejs;

* Terraform binary is like Nodejs binary, they allow what functionality can include into your manifests/scripts and its syntax
* Terraform providers are like Nodejs packages, they provide additional functionality through a common API that the binary understands
* Terraform lock file is like Nodejs package-lock.json, they hold the exact versions of every provider/package along with its integrity hashes

Unfortunately there is no real analogy with Nodejs to Terraform's state file as it is quite unique to it, by now just understand that it is not "just another lock" file. It is the heart of Terraform and what makes all its flow work as it is supposed to. 

Let's imagine an scenario, imagine that you own a Spotify Playlist and you share its ownership with other people. With time, other owner may change songs in this playlist, drifting away from the original playlist. With Terraform, you can create the playlist with all your favourite songs, all this information will be stored into the State file, so if anyone modifies or even deletes the list, Terraform is able to know all the differences between your manifests, Spotify and the State file and reconstruct the desired state, specified in the manifests, by performing only the necessary actions and not a whole reconstruction from 0. And in case you wonder, yes, you can create [Spotify playlists](https://registry.terraform.io/providers/conradludgate/spotify/latest/docs/resources/playlist) with Terraform.




