data "newrelic_notification_destination" "slack_destination" {
  name = "Test_integration_newrelic"
}
resource "newrelic_notification_channel" "channel_slack" {

  name           = var.channel1.name
  type           = var.channel1.type
  destination_id = data.newrelic_notification_destination.slack_destination.id
  product        = var.channel1.product

  property {
    key   = var.channel1.key1
    value = var.channel1.value1
  }
  property {
    key   = var.channel1.key2
    value = var.channel1.value2
  }

}

resource "newrelic_workflow" "workflow_slack_02" {
  name                  = var.workflow.name
  muting_rules_handling = var.workflow.muting_rules_handling

  issues_filter {
    name = var.workflow.name1
    type = var.workflow.type

    predicate {
      attribute = var.workflow.attribute
      operator  = var.workflow.operator
      values    = var.workflow.values
    }
  }

  destination {
    channel_id = newrelic_notification_channel.channel_slack.id
  }
}
