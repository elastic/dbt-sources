GET /kpi-deployments-hourly-all-2022-08/_search

{
  "query": {
    "bool": {
      "must": [],
      "filter": [
        {
          "range": {
            "@timestamp": {
              "gte": "2022-08-31T00:00:00",
              "lt": "2022-08-31T00:00:00"
            }
          }
        }
      ]
    }
  },
  "_source": {
    "excludes": [
      "deployment.telemetry.ilm.ui.metrics",
      "deployment.telemetry.index_management.ui.metrics",
      "deployment.telemetry.rollup.ui.metrics",
      "deployment.telemetry.snapshot.ui.metrics",
      "deployment.telemetry.apm",
      "deployment.telemetry.fleet.agent",
      "deployment.telemetry.integrations_enabled",
      "deployment.telemetry.fleet",
      "deployment.indices.previous.proxy.user_agents",
      "deployment.indices.proxy.user_agents"
    ]
  }
}