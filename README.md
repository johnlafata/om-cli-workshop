# OM CLI workshop

## Setup and Installation Reference: 
[Techdoc Link](https://techdocs.broadcom.com/us/en/vmware-tanzu/platform/tanzu-operations-manager/3-0/tanzu-ops-manager/install-cli.html)

## Common operations Reference: 
[Techdoc Link](https://techdocs.broadcom.com/us/en/vmware-tanzu/platform/tanzu-operations-manager/3-0/tanzu-ops-manager/install-ops-man-api-cli.html)

## example usage:

### set environment variables to point to the Ops Manager API
```
export OM_ENV=~/om-cli-env.yml
```

### list installed components
```
om -k --env=$OM_ENV products
```
### retrieve and save director configuration in file 
```
om -k --env=$OM_ENV staged-director-config >director-config.yml
```
### retrieve and save Tanzu Platform CF configuration in file 
```
om -k --e	nv=$OM_ENV staged-config -p cf >cf-config.yml
```     

## stage product (uploaded tile)
```
om -k --env=$OM_ENV stage-product --product-name cf --product-version 10.0.5
```

## use previous configuration file for product
```
om -k --env=$OM_ENV configure-product --config cf-config.yml
```

## apply changes 
```
om -k --env=$OM_ENV apply-changes --product-name cf
```

