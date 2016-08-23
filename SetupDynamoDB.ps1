$url = "http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.zip"
$output = "$PSScriptRoot\Dynamodb.zip"
Invoke-WebRequest -Uri $url -OutFile $output
New-Item "$PSScriptRoot\DynamoDB" -type directory
New-Item "$PSScriptRoot\DynamoDB\DevDB" -type directory
New-Item "$PSScriptRoot\DynamoDB\TestDB" -type directory
New-Item "$PSScriptRoot\DynamoDB\ProdDB" -type directory
Expand-Archive "$PSScriptRoot\Dynamodb.zip" -dest "$PSScriptRoot\DynamoDB"
Remove-Item "$PSScriptRoot\Dynamodb.zip"