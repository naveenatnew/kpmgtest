#This powershell script results in meta data from an Azure VM like public ip address, tags and network information (currently it works for only 3 mentioned meta datas). The results are given in json format.
#Command line arguments accepted are ip/tags/ni
#Run this script as GetMetaData.ps1 <arg>


$pip = 'network/interface/0/ipv4/ipAddress/0/publicIpAddress?api-version=2017-08-01&format=text"'
$tags = 'compute/tags?api-version=2017-08-01&format=text"'
$ni = 'network?api-version=2017-08-01"'


$header = ' -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance/'
$convert = ' | ConvertTo-Json  -Depth 64'

if ($servername=$args[0] = 'ip'){ Invoke-RestMethod $header $pip $convert }
if ($servername=$args[0] = 'tags'){ Invoke-RestMethod $header $pip $convert }
if ($servername=$args[0] = 'ni'){ Invoke-RestMethod $header $pip $convert }