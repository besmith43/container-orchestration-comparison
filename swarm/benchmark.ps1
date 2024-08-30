[CmdletBinding()]
Param(

)

ab -n 10000 -c 100 http://localhost:3000/