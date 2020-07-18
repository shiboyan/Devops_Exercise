<#
.Version 0.1
.Synopsis
   This script print ip range in specify region
.DESCRIPTION

use
print_aws_ip_ranges.ps1 eu-west-1

#Date 18/7/20
#>


if($args.count -eq 0){
  echo "should put the region"
  exit -1
}

$region=$args[0]
$array = @()
$json= curl https://ip-ranges.amazonaws.com/ip-ranges.json | ConvertFrom-Json
foreach($item in $json.prefixes){
 if($item.region -contains $region){
   $array += $item.ip_prefix
 }
}
$array
if ($array.Count -eq 0){
echo "invalid region,exit"
exit -1
}
else {
echo $array
echo "total sum is "$array.Length

}



