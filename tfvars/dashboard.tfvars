
dashboard = {
  "key1" = {
    name        = "rakesh-dashboard_each_01"
    permissions = "public_read_only"
    pagename    = "task-module"
    pie = {
      "key2" = {
        title  = "1"
        row    = 1
        column = 1
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      "key3" = {
        title  = "2"
        row    = 1
        column = 5
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      "key4" = {
        title  = "6"
        row    = 3
        column = 5
        width  = 8
        height = 3
        query  = "SELECT average(duration) FROM Transaction WHERE transactionType = 'Web'"
      },
      "key5" = {
        title  = "9"
        row    = 3
        column = 1
        width  = 4
        height = 6
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },

      "key6" = {
        title  = "1"
        row    = 1
        column = 1
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
    }
    bar = {
      "key7" = {
        title  = "3"
        row    = 1
        column = 9
        width  = 4
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      "key8" = {
        title  = "5"
        row    = 2
        column = 5
        width  = 8
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },
      "key9" = {
        title  = "6"
        row    = 3
        column = 1
        width  = 4
        height = 3
        query  = "SELECT average(duration) FROM Transaction WHERE transactionType = 'Web'"
      },
      "key10" = {
        title  = "9"
        row    = 3
        column = 5
        width  = 8
        height = 3
        query  = "SELECT count(*) FROM InfrastructureEvent FACET agentVersion,deltaId,fullHostname,agentName"
      },


    }
  }
}
