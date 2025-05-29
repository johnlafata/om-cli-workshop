export OM_ENV=om-cli-sandbox-env.yml
mkdir sandbox
om -k --env=$OM_ENV staged-director-config --no-redact >sandbox-backup/director-config.yml 
om -k --env=$OM_ENV staged-config -p cf >sandbox-backup/cf-config.yml 
om -k --env=$OM_ENV staged-config -p metric-store >sandbox-backup/metric-store-config.yml
om -k --env=$OM_ENV staged-config -p credhub-service-broker >sandbox-backup/credhub-service-broker-config.yml
