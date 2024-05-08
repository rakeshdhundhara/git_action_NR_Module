module "policy_module" {
  source      = "./module-policy"
  policy_name = var.policy_name
  alert       = var.alert

}
module "dashboard_module" {
  source    = "./module-dashboard"
  dashboard = var.dashboard
}

module "workflow_module" {
  source   = "./module-workflow"
  channel1 = var.channel1
  workflow = var.workflow
}
