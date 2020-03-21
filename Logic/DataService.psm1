function TestConnection {
    param (
        [string]$connectionString
    )
    $ErrorActionPreference = 'Stop'

    try {
        $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $connectionString
        $sqlConnection.Open()
        ## This will run if the Open() method does not throw an exception
        $true
    } catch {
        $false
    } finally {
        ## Close the connection when we're done
        $sqlConnection.Close()
    }
}

function GetItemTypes {
    param (
        [string]$connectionString
    )
    

}

Export-ModuleMember -Function TestConnection
Export-ModuleMember -Function GetItemTypes