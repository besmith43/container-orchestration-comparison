[CmdletBinding()]
Param(

)

# stop service
docker stack rm demo

# stop registry
docker stop registry
