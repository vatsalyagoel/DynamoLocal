param
(
    [Parameter(Mandatory = $true)]
    [ValidateSet('Dev', 'Test', 'Prod')]
    $Environment
)

Switch($Environment) {
    'Dev' {
        Write-Output "Booting Dev DB"
        java -D'java.library.path'="$PSScriptRoot\DynamoDB\DynamoDBLocal_lib" -jar "$PSScriptRoot\DynamoDB\DynamoDBLocal.jar" -dbPath "$PSScriptRoot\DynamoDB\DevDB"
    }
    'Test' {
        Write-Output "Booting Test DB"
        java -D'java.library.path'="$PSScriptRoot\DynamoDB\DynamoDBLocal_lib" -jar "$PSScriptRoot\DynamoDB\DynamoDBLocal.jar" -dbPath "$PSScriptRoot\DynamoDB\TestDB"
    }
    'Prod' {
        Write-Output "Booting Prod DB"
        java -D'java.library.path'="$PSScriptRoot\DynamoDB\DynamoDBLocal_lib" -jar "$PSScriptRoot\DynamoDB\DynamoDBLocal.jar" -dbPath "$PSScriptRoot\DynamoDB\ProdDB"
    }
}
