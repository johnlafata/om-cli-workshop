set OM_ENV=om-cli-new-env.yml

# NEW_vcenter_password=$(cat new_vcenter_password.txt) \
#  om interpolate \
#  --config ../parameterized/director-config.yml \
#  --vars-env NEW
#  --vars-file=../parameterized/director-vars.yml >..\scratch\director-config.yml

# om -k --env=%OM_ENV% configure-director --config ..\scratch\director-config.yml

NEW_vcenter_password=$(cat new_vcenter_password.txt) \
  om -k --env=%OM_ENV% configure-director \
  --config ..\parameterized\director-config.yml \
  --vars-env NEW
  --vars-file=..\parameterized\director-vars.yml
