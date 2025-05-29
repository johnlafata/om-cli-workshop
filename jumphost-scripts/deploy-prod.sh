export OM_ENV=om-cli-prod-env.yml
 PROD_vcenter_password=$(cat prod_vcenter_password.txt) \
  om interpolate \
  --config ../parameterized/director-config.yml \
  --vars-env PROD \
  --vars-file=../parameterized/director-vars.yml >../scratch/director-config.yml

# om -k --env=$OM_ENV configure-director --config ../scratch/director-config.yml
echo PROD_vcenter_password=$(cat prod_vcenter_password.txt) \
  om -k --env=$OM_ENV configure-director \
  --config ../parameterized/director-config.yml \
  --vars-env PROD \
  --vars-file=../parameterized/director-vars.yml
