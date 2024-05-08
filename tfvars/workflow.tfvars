channel1 = {

  name    = "slack-example"
  type    = "SLACK"
  product = "IINT"
  key1    = "channelId"
  value1  = "C0729DL7U1Z"
  key2    = "customDetailsSlack"
  value2  = "issue id - {{issueId}}"

}

workflow = {
  name                  = "workflow-slackd-02"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"
  name1                 = "Filter-name"
  type                  = "FILTER"
  attribute             = "labels.policyIds"
  operator              = "EXACTLY_MATCHES"
  values                = ["5242974"]
}
