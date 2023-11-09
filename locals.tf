locals {
  project_tags = {
    contact = "devops@jjtech.com"
    application = "payments"
    project = "jjtech"
    environment = "${terraform.workspace}"
    creationTime = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())

  }  

}