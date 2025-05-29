export OM_ENV=om-cli-prod-env.yml
PROD_VCENTER_PASSWORD=$(cat prod_vcenter_password.txt) \
  om interpolate \
  --config ../parameterized/director-config.yml \
  --vars-env PROD
  --vars-file=../parameterized/director-vars.yml

