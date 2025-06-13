bosh stop -d appMetrics-5ecb8a524d3dfdf56402  --hard -n
bosh stop -d metric-store-a5ba46c090b35dba5def --hard -n
bosh start -d p-healthwatch2-68bc20142a56c776dff8 -n
bosh start -d p-healthwatch2-pas-exporter-537de159669302780b02 -n
